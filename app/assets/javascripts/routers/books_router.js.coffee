class Ice.Routers.Books extends Backbone.Router
  routes:
    '': 'index'
    'books/:id': 'show'

  initialize: ->
    @collection = new Ice.Collections.Books()
    @collection.fetch()

  index: ->
    view = new Ice.Views.BooksIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Book #{id}"

