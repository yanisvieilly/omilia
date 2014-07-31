angular.module 'postsControllers', ['postServices']

  .controller 'PostsIndexCtrl', ($scope, Post) ->
    Post.query().then (posts) -> $scope.posts = posts

  .controller 'PostsShowCtrl', ($scope, $routeParams, Post) ->
    Post.get($routeParams.id).then (post) -> $scope.post = post
