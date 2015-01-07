'use strict';

var app = angular.module('mainApp', [
    'ngRoute',
    'infinite-scroll'
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
    $scope.photos = [];

    $scope.loadData = function() {
        var max = $scope.photos.length;
        if(max <= 1000) {
            for (var i = max; i < (max + 10); i++) {
                $scope.photos.push({src: '/url/' + i, title: 'photo ' + i});
            }
        }
        console.log('loadData',$scope.photos.length);
    };
    //$scope.loadData();

}]).controller('contattiCtrl', ['$scope', function($scope){
    $scope.navbar.active = 'contatti';
}]);