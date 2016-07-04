function ItemsController(Item) {
  ctrl = this;

  ctrl.items = Item.query();
}

playedOut
  .controller('ItemsController', ItemsController)
