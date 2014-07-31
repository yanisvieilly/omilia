angular.module 'tokensControllers', ['tokenServices']

  .controller 'TokensNewCtrl', ($scope, authentication) ->

    $scope.user =
      email: ''
      password: ''

    $scope.login = ->
      authentication.login $scope.user
        .then ->
          console.log 'Login successful'
        .then null, (err) ->
          console.log 'Login failed'
          console.log err
