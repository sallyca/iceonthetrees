class Ice.Collections.Books extends Backbone.Collection
  url: '/api/books'
  model: Ice.Models.Book

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner

