module.exports = (grunt) ->
    options:
        ignorePath: ['public/', 'bower_components/bootstrap/dist/css/bootstrap.css']
    default:
        files:
            'public/index.html': [
                'bower.json'
                'public/css/main.css'
                'public/js/app.js'
                'public/js/services/*.js'
                'public/js/controllers/*.js'
                'public/js/directives/*.js'
                'public/js/filters/*.js'
            ]
