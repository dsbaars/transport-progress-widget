(->
    IndexController = ($http) ->
        vm = this
        vm.routeSummary = {}
        vm.show_stops= true

        vm.getLegClass = (mode) ->
            'leg_' + mode.toLowerCase()

        response = $http.get('/assets/response.otp.json').success((data) ->
            vm.routeSummary = data.plan.itineraries
            return
            )
        return

    IndexController.$inject = ['$http']

    angular
        .module('app')
        .controller('IndexController', IndexController)
)()
