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
          templateUrl: 'templates/cards_index.html',
          controller: 'cardsIndexController'
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
          templateUrl: 'templates/cards_show.html',
          controller: 'cardsShowController'
        }
      }
    });

  $urlRouterProvider.otherwise('/');
  $locationProvider.html5Mode(true);
}

export default AppRoutes;