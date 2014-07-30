angular.module 'tokensControllers', ['tokenServices']

angular.module 'tokensControllers'
  .controller 'TokensNewCtrl', ($scope, Token) ->

    $scope.user =
      email: ''
      password: ''

    $scope.login = (user) ->
      Token.$post Token.$url(), $scope.user
        .then (token) ->
          sessionStorage.setItem 'token', token
