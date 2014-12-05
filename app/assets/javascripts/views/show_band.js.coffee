class App.Views.ShowBand extends Backbone.View
  template: JST['bands/show']

  className: 'band'

  initialize: ->
    @listenTo(@model, "invalid", @addError)#Lnzado por Backbone
    @listenTo(@model, "error", @addError) #Lanzado por servidor
    @lastUpdated = new App.Views.LastUpdated(model: @model)

  events:
    'change': 'save'
    'keydown .band-name': 'blurIfEnter'
    'focus .band-name': 'beginEditing'
    'blur .band-name': 'endEditing'
    'click .destroy-band': 'destroyBand'

  render: ->
    @$el.html(@template(band: @model))
    @lastUpdated.setElement(@$('.normal-footer')).render()
    this

  remove: ->
    @lastUpdated.remove(arguments...)
    super(arguments...)

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
    @$el.removeClass('error')

  endEditing: ->
    @$el.removeClass('editing')

  destroyBand: ->
    console.log("Destroy??")
    @model.destroy()
    @remove()
    false

  addError: =>
    @$el.addClass("error")