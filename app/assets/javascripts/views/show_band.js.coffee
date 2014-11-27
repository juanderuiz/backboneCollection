class App.Views.ShowBand extends Backbone.View
  template: JST['bands/show']

  className: 'band'

  events:
    'change': 'save'
    'keydown .band-name': 'blurIfEnter'
    'focus .band-name': 'beginEditing'
    'blur .band-name': 'endEditing'

  render: ->
    @$el.html(@template(band: @model))
    this

  save: ->
    @model.set
      name: @$('.band-name').val()
    @model.save()
    false 

  blurIfEnter: (e) ->
    if e.keyCode == 13
      @$(':input').blur() 

  beginEditing: ->
    @$el.addClass('editing')

  endEditing: ->
    @$el.removeClass('editing')