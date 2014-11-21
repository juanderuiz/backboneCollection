window.Mymusic =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new @Routers.MymusicRouter
    Backbone.history.start(pushState: true)


window.App = window.Mymusic

$(document).ready ->
  Mymusic.initialize()
