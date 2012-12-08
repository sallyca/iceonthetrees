class Ice.Views.Book extends Backbone.View
  template: JST['books/book']
  tagName: "li"

  render: ->
    $(@el).html(@template(book: @model))
    this

