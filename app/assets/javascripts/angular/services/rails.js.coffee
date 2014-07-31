angular.module 'rails'
  .factory 'tokenInterceptor', ->
    'request': (httpConfig) ->
      token = sessionStorage.getItem 'token'
      httpConfig.headers['Authorization'] = "Bearer #{token}" if token
      httpConfig
