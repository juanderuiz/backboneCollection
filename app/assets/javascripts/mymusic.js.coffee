window.Mymusic =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    @AllBands = [
      new @Models.Band(id: 1, name: "Radiohead")
      new @Models.Band(id: 2, name: "Pony Bravo")
      new @Models.Band(id: 3, name: "The Cure")
    ]
    new @Routers.MymusicRouter
    Backbone.history.start(pushState: true)


window.App = window.Mymusic

$(document).ready ->
  Mymusic.initialize()
