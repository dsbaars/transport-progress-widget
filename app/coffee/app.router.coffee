(->
    config = ($stateProvider, $urlRouterProvider) ->
        $urlRouterProvider.otherwise("/")

        $stateProvider
            .state('index', {
                url: '/',
                controller: 'IndexController',
                controllerAs: 'vm',
                templateUrl: '/templates/index.html',
            })
        return

    angular
        .module('app.routes')
        .config(config)

    return
)()
