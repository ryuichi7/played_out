function AuthController($scope, $state, Auth) {

  console.log($scope.user, "this is the auth log")

  $scope.login = function() {
    Auth.login($scope.user).then(function() {
      $state.go('home')
    });
  };

  $scope.register = function() {
    Auth.register($scope.user).then(function() {
      $state.go('home')
    });
  };
}

playedOut
  .controller('AuthController', AuthController)
