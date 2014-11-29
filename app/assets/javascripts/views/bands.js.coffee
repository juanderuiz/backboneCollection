class App.Views.Bands extends Backbone.View
  #template: _.template("<div>Hello, <%= name %></div>")

  template: JST['bands/index']

  initialize: ->
    @addActions = new App.Views.AddActions(collection: @collection)
    @listenTo(@collection, 'reset', @render)
    @listenTo(@collection, 'add', @renderBand)

  render: =>
    @$el.html(@template())
    @collection.forEach(@renderBand)
    @$el.append(@addActions.render().el)
    this

  renderBand: (band) =>
    view = new App.Views.ShowBand(model: band, tagName: 'li')
    @$('.bands').append(view.render().el)

