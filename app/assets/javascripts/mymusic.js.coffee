window.Mymusic =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    @AllBands = new @Collections.Bands
    @AllBands.fetch().done =>
      new @Routers.MymusicRouter
      Backbone.history.start(pushState: true)

window.App = window.Mymusic

$(document).ready ->
  Mymusic.initialize()
