playedOut
	.config(function ($stateProvider, $urlRouterProvider) {
		$stateProvider
		.state('home', {
			url: '/',
			templateUrl: 'home.html',
			controller: 'HomeController as home'
		}).state('items', {
			url: '/items',
			templateUrl: 'items/index.html',
			controller: 'ItemsController as item'
		});

		$urlRouterProvider.otherwise('/');
	})
