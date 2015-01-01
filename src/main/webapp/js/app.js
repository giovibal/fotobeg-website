'use strict';

var app = angular.module('mainApp', [
    'ngRoute'
]);

app.config(['$routeProvider','$locationProvider',
    function($routeProvider, $locationProvider) {
        $routeProvider
            .when('/home', {
                templateUrl: 'partials/home.html',
                controller: 'homeCtrl'
            })
            .when('/info', {
                templateUrl: 'partials/info.html',
                controller: 'infoCtrl'
            })
            .when('/foto', {
                templateUrl: 'partials/foto.html',
                controller: 'fotoCtrl'
            })
            .when('/contatti', {
                templateUrl: 'partials/contatti.html',
                controller: 'contattiCtrl'
            })
            .otherwise({
                redirectTo: '/home'
            });

        // use the HTML5 History API
        $locationProvider.html5Mode(true).hashPrefix('!');
    }]);

// controllers
app.controller('mainCtrl', ['$scope', function($scope){
    $scope.navbar = {};
    $scope.navbar.active = 'home';
}]).controller('homeCtrl', ['$scope', function($scope){
    $scope.navbar.active = 'home';
}]).controller('infoCtrl', ['$scope', function($scope){
    $scope.navbar.active = 'info';
}]).controller('fotoCtrl', ['$scope', function($scope){
    $scope.navbar.active = 'foto';
}]).controller('contattiCtrl', ['$scope', function($scope){
    $scope.navbar.active = 'contatti';
}]);