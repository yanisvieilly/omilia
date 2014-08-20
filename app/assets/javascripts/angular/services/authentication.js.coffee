@omiliaApp.factory 'authentication', (Token, $q) ->

  getToken: sessionStorage.getItem 'token'

  setToken: (token) -> sessionStorage.setItem 'token', token

  logout: sessionStorage.removeItem 'token'

  login: (user) ->
    deferred = $q.defer()
    new Token(user).create()
      .then (token) =>
        @setToken token
        deferred.resolve()
      .then null, (err) ->
        deferred.reject err.data
    deferred.promise
