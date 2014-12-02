class App.Views.AddActions extends Backbone.View
  template: JST['bands/add-actions']

  className: 'add-actions'

  events: 
    'click .add-band': 'addBand'

  render: ->
    @$el.html(@template())
    this

  addBand: ->
    @collection.add({}) #Crea una instancia con los valores por defecto
    false