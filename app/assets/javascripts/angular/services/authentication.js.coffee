@omiliaApp.factory 'authentication', (Token) ->

  getToken: sessionStorage.getItem 'token'

  setToken: (token) -> sessionStorage.setItem 'token', token

  logout: sessionStorage.removeItem 'token'

  login: (user) ->
    Token.$post Token.$url(), user
      .then (token) => @setToken token
