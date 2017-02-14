function NewItemController($state, Item, Auth, Type) {
  var ctrl = this;

  ctrl.item = new Item();
  ctrl.types = Type.query();

  ctrl.addItem = function() {
    if (Auth.isAuthenticated()) {
      ctrl.item.$save(function() {
        $state.go('home.items');
      }, function(error) {
        console.log(error)
      })
    } else {
      // show need to sign in error
    };
  }




}

playedOut
  .controller('NewItemController', NewItemController)
