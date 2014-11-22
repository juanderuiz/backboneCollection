class App.Views.EditBand extends Backbone.View
  template: JST['bands/edit']

  tagName: 'form'

  events:
    'submit': 'saveModel'

  render: ->
    @$el.html(@template(band: @model))
    this

  saveModel: (e) ->
    @model.set('name', @$('.band-name').val())
    Backbone.history.navigate('/', trigger: true)
    false