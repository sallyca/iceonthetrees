class Ice.Views.Book extends Backbone.View
  template: JST['books/book']
  tagName: "li"

  events:
    'click a': 'showChapters'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightWinner, this)
    
  showEntry: ->
    Backbone.history.navigate("books/#{@model.get('id')}", true)

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  render: ->
    $(@el).html(@template(book: @model))
    this

  showChapters: (event) ->
    event.preventDefault();
    name = @model.get("title")
    alert(name)
    chapters = @model.get('chapters')
    view = new Ice.Views.ChaptersIndex(collection: chapters)
    $("#chapters").append(view.render().el)


