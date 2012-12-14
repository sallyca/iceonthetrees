class Ice.Views.BooksIndex extends Backbone.View
  template: JST['books/index']

  events:
    'submit #new_book': 'createBook'
    'click #draw': 'drawWinner'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendBook, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendBook)
    this

  appendBook: (book) ->
    view = new Ice.Views.Book(model: book)
    $("#books").append(view.render().el)

  drawWinner: (event) ->
    event.preventDefault()
    @collection.drawWinner()

  createBook: (event) ->
    event.preventDefault()
    attributes = title: $('#new_book_title').val()
    @collection.create attributes,
      wait: true
      success: -> $('#new_book')[0].reset()
      error: @handleError
      
  handleError: (entry, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages