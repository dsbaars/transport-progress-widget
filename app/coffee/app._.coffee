(->
    angular
        .module('app.config', [])

    angular
        .module('app.routes', [
            'ui.router'
    ])

    angular
        .module('app', [
            'ngSanitize'
            'ngAria'
            'ngAnimate'
            'ui.bootstrap'
            'app.routes'
            'app.config'
    ])

    return
)()
