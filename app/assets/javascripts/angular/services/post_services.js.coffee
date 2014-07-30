angular.module 'postServices', ['rails']

angular.module 'postServices'
  .factory 'Post', (railsResourceFactory) ->
    railsResourceFactory
      url: '/posts'
      name: 'post'
      interceptors: ['postInterceptor']

  .factory 'postInterceptor', ->
    'request': (httpConfig) ->
      token = sessionStorage.getItem 'token'
      httpConfig.headers['Authorization'] = "Bearer #{token}" if token
      httpConfig
