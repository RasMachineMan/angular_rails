//= require_self
//= require_tree

angular.module('AngularTesting', ['ui.router'])

angular.module('AngularTesting').config(['$stateProvider', '$urlRouterProvider', '$locationProvider',
 function($stateProvider, $urlRouterProvider, $locationProvider){

    $locationProvider.html5Mode(true)

    $urlRouterProvider.when('/', ['$state', function($state){
      $state.go('root')
      }
    ])

    $urlRouterProvider.otherwise('/')

    // Root

    $stateProvider
    .state('root', {
      url: '',
      templateUrl: '/templates/home',
      controller: 'HomeCtrl'
    })


}])


