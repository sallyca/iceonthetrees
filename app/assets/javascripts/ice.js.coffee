window.Ice =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Ice.Routers.Books()
    Backbone.history.start()

$(document).ready ->
  Ice.init()
