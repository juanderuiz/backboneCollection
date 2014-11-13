window.Mymusic =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    alert ('Welcome to MyMusic Collection!')

window.App = window.Mymusic

$(document).ready ->
  Mymusic.initialize()
