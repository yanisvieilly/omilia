angular.module 'postsControllers', ['postServices']

angular.module 'postsControllers'
  .controller 'PostsIndexCtrl', ($scope, Post) ->
    Post.query().then (posts) -> $scope.posts = posts

angular.module 'postsControllers'
  .controller 'PostsShowCtrl', ($scope, $routeParams, Post) ->
    Post.get($routeParams.id).then (post) -> $scope.post = post
