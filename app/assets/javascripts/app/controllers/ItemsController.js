function ItemsController(Item) {
  var ctrl = this;
  ctrl.isCollapsed = true;
  ctrl.items = Item.query();
}

playedOut
  .controller('ItemsController', ItemsController)
