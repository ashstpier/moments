import angular from 'angular'
import ngAnimate from 'angular-animate'
import angularuirouter from 'angular-ui-router'

const app = angular.module('moments',[
  'ui.router',
  'ngAnimate'
]);

// Routes

import AppRoutes from './routes/appRoutes'

app.config(AppRoutes);


// Controllers

import HomeController from './controllers/homeController'

app.controller("homeController", HomeController);
