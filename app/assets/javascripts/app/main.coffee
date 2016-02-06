#= require_self
#= require_tree

angular.module('AngularTesting',
  ['ui.router', 'restangular']
)

angular.module('AngularTesting')
  .config ['$stateProvider', '$urlRouterProvider','$locationProvider',
    ($stateProvider, $urlRouterProvider, $locationProvider) ->

      $locationProvider.html5Mode(true)

      $urlRouterProvider.when('/',  ['$state', ($state)->
        $state.go('root')
      ])

      $stateProvider
      .state 'root',
        url: ''
        templateUrl: '/templates/home'
        controller:  'AngularTesting.Controllers.Home.HomeCtrl'

]
