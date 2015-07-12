var AppRoutes = ($stateProvider, $urlRouterProvider, $locationProvider) => {

  $stateProvider
    .state('cards', {
      url: '/',
      templateUrl: 'templates/cards.html',
      controller: 'cardsController'
    });

  $urlRouterProvider.otherwise('/');
  $locationProvider.html5Mode(true);
}

export default AppRoutes;