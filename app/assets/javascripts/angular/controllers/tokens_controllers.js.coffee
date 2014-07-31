angular.module 'tokensControllers', ['tokenServices']

  .controller 'TokensNewCtrl', ($scope, authentication) ->

    $scope.user =
      email: ''
      password: ''

    $scope.login = ->
      authentication.login $scope.user
