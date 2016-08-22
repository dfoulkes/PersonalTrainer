webapp.controller('MainCtrl', function ($scope, $routeParams) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }

        $("#myCarousel").show();

    }
);

webapp.controller('AboutCtrl', function ($scope, $routeParams) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }
        $("#myCarousel").hide();
    }
);


webapp.controller('ServiceCtrl', function ($scope, $routeParams) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }
        $("#myCarousel").hide();
    }
);

webapp.controller('TestimonialsCtrl', function ($scope, $routeParams) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }
        $("#myCarousel").show();
    }
);


webapp.controller('InfoCtrl', function ($scope, $routeParams) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }
        $("#myCarousel").hide();
    }
);


webapp.controller('GettingStartedCtrl', function ($scope, $routeParams) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }

        function hideBmiScale() {
            $("#underWeight").hide();
            $("#healthyWeight").hide();
            $("#overWeight").hide();
            $("#obese").hide();
        }


        hideBmiScale();
        $("#myCarousel").show();
        $scope.bmi = 0;
        $scope.stones = undefined;
        $scope.pounds = undefined;
        $scope.feet = undefined;
        $scope.inches = undefined;


        $scope.bmi = 0;


        $scope.change = function calculateBmi() {
            if ($scope.stones != undefined && $scope.pounds != undefined &&
                $scope.feet != undefined && $scope.inches != undefined
                && $scope.stones >= 0 && $scope.pounds >= 0 && $scope.feet >= 0 && $scope.inches >= 0
            ) {
                var weight = ($scope.stones * 14) + $scope.pounds;
                var height = ($scope.feet * 12) + $scope.inches;
                $scope.bmi = Math.round((weight * 703) / Math.pow(height, 2) * 10) / 10;
            }
            else {
                $scope.bmi = 0;
            }
            hideBmiScale();
            if ($scope.bmi > 0) {

                //underweight
                if ($scope.bmi >= 0 && $scope.bmi < 18.5) {
                    $("#underWeight").show();
                }
                //healthy
                else if ($scope.bmi >= 18.5 && $scope.bmi <= 24.9) {
                    $("#healthyWeight").show();
                }
                //overweight
                else if ($scope.bmi >= 25 && $scope.bmi <= 29.9) {
                    $("#overWeight").show();
                }
                //obese
                else if ($scope.bmi >= 30) {
                    $("#obese").show();
                }
            }
            else {

            }
        }


    $scope.labels = ["5.0", "5.2", "5.3", "5.4", "5.5", "5.6", "5.7","5.8","5.9","5.10","5.11","6.0","6.1","6.2","6.3","6.4"];
    $scope.series = ['UnderWeight', 'AverageWeight','OverWeight'];
    $scope.data = [
        arraysForGraph().b,
        arraysForGraph().a,
        arraysForGraph().o
    ];
    $scope.onClick = function (points, evt) {
        console.log(points, evt);
    };
    $scope.datasetOverride = [{ yAxisID: 'y-axis-1' }, { yAxisID: 'y-axis-2' }];
    $scope.options = {
        scales: {
            yAxes: [
                {
                    text: 'Weight In Pounds',
                    id: 'y-axis-1',
                    type: 'linear',
                    display: true,
                    position: 'left'
                },
                {
                    id: 'y-axis-2',
                    type: 'linear',
                    display: false,
                    position: 'right'
                }
            ]
        }
    };


    }
);

webapp.controller('ContactCtrl', function ($scope, $routeParams, ContactService, $q) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }
        $scope.error = "";
        $("#myCarousel").hide();
        $("#messageSent").hide();
        $("#errorMessage").hide();

        $scope.save = function (contact) {
            if (contact != null) {
                if (contact.email == null || contact.email == undefined) {
                    $scope.error = "please enter a valid e-mail address";
                    $("#errorMessage").show();
                }
                else if (contact.name == undefined) {
                    $scope.error = "please enter your name first";
                    $("#errorMessage").show();
                }
                else if (contact.message == undefined) {
                    $scope.error = "please enter a message to send me.";
                    $("#errorMessage").show();
                }
                else {

                    var promise = ContactService.save(contact);

                    promise.then(
                        function (payload) {
                            var result = payload.data;
                            if (result.status === "OK") {
                                $("#errorMessage").hide();
                                $("#messageSent").show();
                            }
                            else {
                                $scope.error = result.message;
                                $("#errorMessage").show();
                            }

                        },
                        function (errorPayload) {
                            $log.error('failure loading movie', errorPayload);
                        });

                }
                //display thank you message
            }
            else {
                $scope.error = "please enter your details first.";
                $("#errorMessage").show();
            }
        }

    }
);