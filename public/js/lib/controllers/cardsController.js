var CardsController = ($scope, Card) => {

  Card.query(function(data) {
    $scope.cards = data;
  });

}

export default CardsController;