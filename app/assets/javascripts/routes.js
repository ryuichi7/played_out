playedOut
	.config(function ($stateProvider, $urlRouterProvider) {
		$stateProvider
		.state('home', {
			url: '/',
			templateUrl: 'home.html',
			controller: 'HomeController as home'
		}).state('login', {
			url: '/login',
			templateUrl: 'auth/_login.html',
			controller: 'AuthController',
			onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (user){
					console.log(user);
          $state.go('home');
        }, function(error) {
          console.log(error);
        })
      }]
		}).state('signup', {
			url: '/signup',
			templateUrl: 'auth/_register.html',
			controller: 'AuthController',
			onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('home');
        })
      }]
		}).state('items', {
			url: '/items',
			templateUrl: 'items/index.html',
			controller: 'ItemsController as item'
		});

		$urlRouterProvider.otherwise('/');
	})
