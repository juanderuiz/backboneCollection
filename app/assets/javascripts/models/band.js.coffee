class App.Models.Band extends Backbone.Model
  #urlRoot: '/bands'

  #Hacemos doble validacion aunque no tendria porque hacerse
  #Esta es más rápida ya que no llega hasta el servidor
  #La otra está en el modelo del Rails como siempre
  validate: ->
    unless @hasName()
      "Must provide a Name"

  hasName: -> @hasAttribute('name')

  hasAttribute: (attr) ->
    @has(attr) && @get(attr).trim() != ""