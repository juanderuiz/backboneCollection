class App.Views.Bands extends Backbone.View
  #template: _.template("<div>Hello, <%= name %></div>")

  template: JST['bands/index']

  render: ->
    @$el.html(@template())
    @collection.forEach(@renderBand)
    this

  renderBand: (band) =>
    view = new App.Views.ShowBand(model: band, tagName: 'li')
    @$('.bands').append(view.render().el)

