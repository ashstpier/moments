var CardsShowController = ($scope, $stateParams, Card) => {

  Card.get({id: $stateParams.id}, (data) => {
    $scope.event = data;
  });

}

export default CardsShowController;