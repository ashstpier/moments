angular.module('api', [])
  .factory("Card", function($resource) {
    return $resource("/api/cards/:id");
  });