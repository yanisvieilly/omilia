angular.module 'tokenServices', ['rails']

angular.module 'tokenServices'
  .factory 'Token', (railsResourceFactory) ->
    railsResourceFactory
      url: '/tokens'
      name: 'token'
