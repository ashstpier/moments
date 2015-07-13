var EventController = ($scope, $stateParams, Card) => {

  Card.get({id: $stateParams.id}, (data) => {
    $scope.event = data;
    $scope.event.image = 'https://download.unsplash.com/photo-1429547584745-d8bec594c82e'
  });

}

export default EventController;