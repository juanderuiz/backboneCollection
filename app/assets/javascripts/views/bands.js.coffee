class App.Views.Bands extends Backbone.View
  #template: _.template("<div>Hello, <%= name %></div>")

  template: JST['bands/index']

  events:
    'click a': 'showBand'

  render: ->
    @$el.html(@template(bands: @collection))
    this

  showBand: (e) ->
    $this = $(e.currentTarget)
    url = $this.attr("href")
    Backbone.history.navigate(url, trigger: true)
    #If trigger:true is not added, it doesn't ROUTE!!
    false #event.preventDefault
