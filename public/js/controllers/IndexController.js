(function() {
  var IndexController;
  IndexController = function($http) {
    var response, vm;
    vm = this;
    vm.routeSummary = {};
    vm.show_stops = true;
    vm.getLegClass = function(mode) {
      return 'leg_' + mode.toLowerCase();
    };
    response = $http.get('/assets/response.otp.json').success(function(data) {
      vm.routeSummary = data.plan.itineraries;
    });
  };
  IndexController.$inject = ['$http'];
  return angular.module('app').controller('IndexController', IndexController);
})();
