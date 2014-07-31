angular.module 'tokensControllers', ['tokenServices']

  .controller 'TokensNewCtrl', ($scope, Token) ->

    $scope.user =
      email: ''
      password: ''

    $scope.login = (user) ->
      Token.$post Token.$url(), $scope.user
        .then (token) ->
          sessionStorage.setItem 'token', token
