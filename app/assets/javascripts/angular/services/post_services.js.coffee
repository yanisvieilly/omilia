angular.module 'postServices', ['rails']

angular.module 'postServices'
  .factory 'Post', (railsResourceFactory) ->
    railsResourceFactory
      url: '/posts'
      name: 'post'
