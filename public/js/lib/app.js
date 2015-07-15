import angular from 'angular'
import ngAnimate from 'angular-animate'
import ngResource from 'angular-resource'
import angularuirouter from 'angular-ui-router'

const app = angular.module('moments',[
  'ui.router',
  'ngAnimate',
  'ngResource',
  'api'
]);

// Routes

import AppRoutes from './routes/appRoutes'
import APIRoutes from './routes/apiRoutes'

app.config(AppRoutes);


// Controllers

import NavController from './controllers/nav_controller'
import CardsIndexController from './controllers/cards/cards_index_controller'
import CardsShowController from './controllers/cards/cards_show_controller'

app.controller("navController", NavController);

app.controller("cardsIndexController", CardsIndexController);
app.controller("cardsShowController", CardsShowController);
