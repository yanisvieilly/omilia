@omiliaApp.config ($routeProvider) ->
  $routeProvider
    .when '/posts',
      templateUrl: '/assets/angular/templates/posts/index.html'
      controller: 'PostsIndexCtrl'
    .when '/posts/:id',
      templateUrl: '/assets/angular/templates/posts/show.html'
      controller: 'PostsShowCtrl'
    .otherwise
      redirectTo: '/'
