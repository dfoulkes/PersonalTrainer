


webapp.controller('MainCtrl', function($scope, $routeParams){
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
        $("#myCarousel").show();
    }
);

webapp.controller('ContactCtrl', function ($scope, $routeParams, ContactService) {
        $scope.project = {
            name: "Home Automation (Dashboard)"
        }
        $scope.error="";
        $("#myCarousel").hide();
        $("#messageSent").hide();
        $("#errorMessage").hide();

        $scope.save = function (contact) {
        if(contact != null) {
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
                    $("#errorMessage").hide();
                    ContactService.save(contact);
                    $("#messageSent").show();
                }
            //display thank you message
            }
            else{
                $scope.error = "please enter your details first.";
                $("#errorMessage").show();
            }
        }

    }
);