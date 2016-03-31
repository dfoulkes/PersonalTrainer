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

    <script type="application/javascript" src="./resources/bower_components/jquery/dist/jquery.js"></script>
    <script type="application/javascript" src="./resources/bower_components/bootstrap/dist/js/bootstrap.js"></script>
    <script type="application/javascript" src="./resources/bower_components/angular/angular.js"></script>

    <script type="application/javascript" src="./resources/bower_components/angular/angular.js"></script>
    <script type="application/javascript" src="./resources/bower_components/angular-route/angular-route.js"></script>
    <script type="application/javascript" src="./resources/js/app.js"></script>
    <script type="application/javascript" src="./resources/js/services.js"></script>
    <script type="application/javascript" src="./resources/js/controller.js"></script>
    <script type="application/javascript" src="./resources/js/menuControl.js"></script>
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
                        <li id="servicesMenu"><a id="buttonService" href="#services">Services</a></li>
                        <li id="testimonialsMenu"><a id="buttonTestimonial" href="#testimonials">Testimonials</a></li>
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
<!-- <div class = "page-header">
   	<img src="./resources/images/CGF_Logo_Large.jpg" class="img-responsive">
   <h1>
      Example page header
   </h1>
</div> -->

    <br>
    <div id="myCarousel" class="carousel slide foreground" data-ride="carousel">
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
                <img src="./resources/images/old_guy_workout.jpg" alt="Chania" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3>John Doe</h3>
                    <p>John lost 2st in six weeks.</p>
                </div>
            </div>

            <div class="item">
                <img src="./resources/images/bloke_dumbbells.jpg" alt="Chania" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3>Tim Nice But Dim</h3>
                    <p>Tim .</p>
                </div>
            </div>

            <div class="item">
                <img src="./resources/images/runner.jpg" alt="Flower" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3>Jane Do</h3>
                    <p>Trained to take part in the London marathon</p>
                </div>
            </div>

            <div class="item">
                <img src="./resources/images/Sudio_workout.jpg" alt="Flower" width="100%" height="150px">
                <div class="carousel-caption">
                    <h3>Postnatal</h3>
                    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
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

        <div class="social">
            <ul>
                <li><a href="https://www.facebook.com/CallumGomersallFitness/"><i class="fa fa-lg fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-lg fa-twitter"></i></a></li>
                <%--<li><a href="#"><i class="fa fa-lg fa-google-plus"></i></a></li>--%>
                <li><a href="#"><i class="fa fa-lg fa-linkedin"></i></a></li>
                <%--<li><a href="#"><i class="fa fa-lg fa-flickr"></i></a></li>--%>
                <%--<li><a href="#"><i class="fa fa-lg fa-instagram"></i></a></li>--%>
                <li><a href="#"><i class="fa fa-lg fa-youtube"></i></a></li>
            </ul>
        </div>
    </footer>

</div>
</div>
</body>
</html>
