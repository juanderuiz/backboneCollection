class App.Routers.MymusicRouter extends Backbone.Router
routes:
  '': 'index'
  'bands/:id': 'showBand'

index: ->
  alert("Requested index page")

showBand: (id) ->
  alert("Request Band #{id}")