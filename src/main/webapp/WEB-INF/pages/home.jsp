<%--
  Created by IntelliJ IDEA.
  User: danfoulkes
  Date: 29/01/2016
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html ng-app="personalTrainerApp">
<head>
    <title>cgfitness.co.uk</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="./resources/bower_components/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="./resources/bower_components/bootstrap/dist/css/bootstrap-responsive.css" rel="stylesheet">
    <!--load font awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

    <link href="./resources/css/styles.css" rel="stylesheet">
    <link href="./resources/css/carousel.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="./resources/bower_components/angular-chart.js/dist/angular-chart.css" rel="stylesheet">

    <link rel="apple-touch-icon" sizes="57x57" href="./resources/images/Favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./resources/images/Favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./resources/images/Favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./resources/images/Favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./resources/images/Favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./resources/images/Favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./resources/images/Favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./resources/images/Favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./resources/images/Favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="./resources/images/Favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./resources/images/Favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./resources/images/Favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./resources/images/Favicon/favicon-16x16.png">
    <link rel="manifest" href="./resources/images/Favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="./resources/images/Favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <script type="application/javascript" src="./resources/bower_components/jquery/dist/jquery.js"></script>
    <script type="application/javascript" src="./resources/bower_components/bootstrap/dist/js/bootstrap.js"></script>
    <script type="application/javascript" src="./resources/bower_components/angular/angular.js"></script>

    <script type="application/javascript" src="./resources/bower_components/angular/angular.js"></script>
    <script type="application/javascript" src="./resources/bower_components/angular-route/angular-route.js"></script>
    <script type="application/javascript" src="./resources/bower_components/Chart.js/Chart.js"></script>
    <script type="application/javascript" src="./resources/bower_components/angular-chart.js/dist/angular-chart.js"></script>

    <script type="application/javascript" src="./resources/js/app.js"></script>
    <script type="application/javascript" src="./resources/js/services.js"></script>
    <script type="application/javascript" src="./resources/js/controller.js"></script>
    <script type="application/javascript" src="./resources/js/menuControl.js"></script>
    <script type="application/javascript" src="./resources/js/bmi.js"></script>
</head>
<body>

<div class="navbar-wrapper">
    <%--<div class="container">--%>
        <nav id="nav-main" class="navbar navbar-default navbar-inverse">
        <%--<nav id="nav-main" class="navbar navbar-inverse navbar-static-top">--%>
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed"  data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">
                        <img style="max-width:100px; margin-top: -7px;"
                             src="./resources/images/CGF_Logo_small.jpg">
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav custom_menu_item">
                        <li id="homeMenu" class="active"><a id="#buttonHome" href="#home">Home</a></li>
                        <li id="aboutMenu"><a id="buttonAbout" href="#about">Meet Callum</a></li>
                        <li id="contactMenu"><a id="buttonContact" href="#contact">Contact</a></li>
                        <li id="servicesMenu"><a id="buttonService" href="#services">Prices</a></li>
                        <li id="testimonialsMenu"><a id="buttonTestimonial" href="#testimonials">Testimonials</a></li>
                        <li id="gettingStartedMenu"><a id="buttonGettingStarted" href="#gettingStarted">Getting Started</a></li>
                    </ul>
                </div>
            </div>
        </nav>

    <%--</div>--%>
</div>
<div class="container background">
    <script>
        $(document).on('click','.navbar-collapse.in',function(e) {
            if( $(e.target).is('a') ) {
                $(".nav").find(".active").removeClass("active");
                $(this).parent().addClass("active");
                $(this).collapse('hide');
            }
        });
        addMonitors();
    </script>
    <div id="mobileHeader" class="hidden-lg mobile-header">

        <%--<img src="./resources/images/CGF_Logo_small.jpg" width="100%">--%>
        <img src="./resources/images/CGF_Logo_Large.jpg" width="100%">
    </div>
    <br>
    <div id="myCarousel" class="carousel slide foreground visible-lg-block" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="./resources/images/header/boxersize.jpg" alt="Chania" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3></h3>
                    <p></p>
                </div>
            </div>

            <div class="item">
                <img src="./resources/images/header/banner_05.png" alt="Chania" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3></h3>
                    <p></p>
                </div>
            </div>

            <div class="item">
                <img src="./resources/images/header/squat.jpg" alt="Flower" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3></h3>
                    <p></p>
                </div>
            </div>

            <div class="item">
                <img src="./resources/images/header/compilation.jpg" alt="Flower" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3></h3>
                    <p></p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
<div id="top" ng-view class="foreground">
</div>
    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->
    <footer class="foreground">
        <p class="pull-right"></p>
        <p>© 2016 CG Fitness, Inc . · <a href="#privacy">Privacy</a> · <a href="#terms">Terms</a> </p>
        <small>© 2016 created By Dan Foulkes</small>
        <div class="social">
            <ul>
                <li><a href="https://www.facebook.com/CallumGomersallFitness/"><i class="fa fa-lg fa-facebook"></i></a></li>
                <li><a href="https://twitter.com/CG__Fitness"><i class="fa fa-lg fa-twitter"></i></a></li>
                <li><a href="https://www.linkedin.com/in/callum-gomersall-954349122"><i class="fa fa-lg fa-linkedin"></i></a></li>
                <li><a href="https://www.youtube.com/channel/UChJbp7hZwP4VHJUeDYmYxpA"><i class="fa fa-lg fa-youtube"></i></a></li>
            </ul>
        </div>
    </footer>

</div>
</div>
</body>
</html>
