@omiliaApp.config ($routeProvider) ->
  $routeProvider
    .when '/login',
      templateUrl: '/assets/angular/templates/tokens/new.html'
      controller: 'TokensNewCtrl'
    .when '/posts',
      templateUrl: '/assets/angular/templates/posts/index.html'
      controller: 'PostsIndexCtrl'
    .when '/posts/:id',
      templateUrl: '/assets/angular/templates/posts/show.html'
      controller: 'PostsShowCtrl'
    .otherwise
      redirectTo: '/'
