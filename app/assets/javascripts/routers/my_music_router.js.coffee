class App.Routers.MymusicRouter extends Backbone.Router
  routes:
    '': 'index'
    'bands/:id': 'showBand'

  index: ->
    view = new App.Views.Bands(collection: App.AllBands)
    $('#container').html(view.render().el)

  showBand: (id) ->
    model = App.AllBands[id - 1]
    view = new App.Views.EditBand(model: model)
    console.log("Request Band #{id}")
    $('#container').html(view.render().el)