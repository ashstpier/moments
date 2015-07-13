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

import NavController from './controllers/navController'
import CardsController from './controllers/cardsController'
import EventController from './controllers/eventController'

app.controller("navController", NavController);
app.controller("cardsController", CardsController);
app.controller("eventController", EventController);
