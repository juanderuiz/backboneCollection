class App.Views.LastUpdated extends Backbone.View
  initialize: ->
    @listenTo(@model, 'change:updated_at', @render)
    #En el controller band.rb, en la accion 'update'
    #tengo que devolver el json para poder usar el nuevo
    #updated_at... si pone 204 No content... no lo tendría

  render: ->
    @$el.html(@lastUpdated())
    this
  
  lastUpdated: -> 
    moment(@model.get("updated_at")).calendar()