class App.Views.EditBand extends Backbone.View
  template: JST['bands/edit']

  tagName: 'form'

  events:
    'submit': 'saveModel'

  render: ->
    @$el.html(@template(band: @model))
    this

  saveModel: (e) ->
    @model.save('name', @$('.band-name').val())
    #@model.save({'name', @$('.band-name').val()}, patch: true)

    console.log("Band Edited and saved??")
    Backbone.history.navigate('/', trigger: true)
    false