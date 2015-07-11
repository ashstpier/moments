var AppRoutes = ($stateProvider, $urlRouterProvider, $locationProvider) => {

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'templates/home.html',
      controller: 'homeController'
    });

  $urlRouterProvider.otherwise('/');
  $locationProvider.html5Mode(true);
}

export default AppRoutes;