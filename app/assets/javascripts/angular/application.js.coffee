@omiliaApp = angular.module 'omiliaApp', ['ngRoute', 'postsControllers', 'tokensControllers']

@omiliaApp.config ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
