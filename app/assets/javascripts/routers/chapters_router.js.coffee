class Ice.Routers.Chapters extends Backbone.Router
  routes:
    'chapter/:id': 'show'

  initialize: ->
    @collection = new Ice.Collections.Chapters()
    @collection.fetch()