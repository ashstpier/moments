var AppRoutes = ($stateProvider, $urlRouterProvider, $locationProvider) => {

  $stateProvider
    .state('cards', {
      url: '/cards',
      views: {
        "nav": {
          templateUrl: 'templates/nav.html',
          controller: 'navController'
        },
        "page": {
          templateUrl: 'templates/cards.html',
          controller: 'cardsController'
        }
      }
    })
    .state('card', {
      url: '/cards/:id',
      views: {
        "nav": {
          templateUrl: 'templates/nav.html',
          controller: 'navController'
        },
        "page": {
          templateUrl: 'templates/event.html',
          controller: 'eventController'
        }
      }
    });

  $urlRouterProvider.otherwise('/');
  $locationProvider.html5Mode(true);
}

export default AppRoutes;