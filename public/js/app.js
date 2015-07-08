(function() {
  angular.module('app.config', []);
  angular.module('app.routes', ['ui.router']);
  angular.module('app', ['ngSanitize', 'ngAria', 'ngAnimate', 'ui.bootstrap', 'app.routes', 'app.config']);
})();

(function() {
  var config;
  config = function($locationProvider) {
    $locationProvider.html5Mode(true);
    $locationProvider.hashPrefix('!');
  };
  angular.module('app.config').config(config);
})();

(function() {
  var config;
  config = function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise("/");
    $stateProvider.state('index', {
      url: '/',
      controller: 'IndexController',
      controllerAs: 'vm',
      templateUrl: '/templates/index.html'
    });
  };
  angular.module('app.routes').config(config);
})();
