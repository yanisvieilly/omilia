angular.module 'postServices', ['rails']
  .factory 'Post', (railsResourceFactory) ->
    railsResourceFactory
      url: '/posts'
      name: 'post'
      interceptors: ['tokenInterceptor']
