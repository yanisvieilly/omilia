angular.module 'tokenServices', ['rails']
  .factory 'Token', (railsResourceFactory) ->
    railsResourceFactory
      url: '/tokens'
      name: 'token'
