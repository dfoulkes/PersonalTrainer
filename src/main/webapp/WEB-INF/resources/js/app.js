webapp = angular.module('personalTrainerApp', ['ngRoute','chart.js']);

webapp.config(function ($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: './home',
            controller: 'MainCtrl'
        })
        .when('/home', {
            templateUrl: './home',
            controller: 'MainCtrl'
        })
        .when('/about', {
            templateUrl: './about',
            controller: 'AboutCtrl'
        })
        .when('/contact', {
            templateUrl: './contact',
            controller: 'ContactCtrl'
        })
        .when('/services', {
             templateUrl: './services',
             controller: 'ServiceCtrl'
        })
        .when('/testimonials', {
             templateUrl: './testimonials',
             controller: 'TestimonialsCtrl'
         })
        .when('/gettingStarted', {
            templateUrl: './gettingStarted',
            controller: 'GettingStartedCtrl'
        })
        .when('/privacy', {
            templateUrl: './privacy',
            controller: 'InfoCtrl'
        })
        .when('/terms', {
            templateUrl: './terms',
            controller: 'InfoCtrl'
        })
        .otherwise({
            redirectTo: '/home'
        });
});