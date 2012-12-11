class Ice.Collections.Books extends Backbone.Collection
  url: '/api/books'

drawWinner: ->
  winner = @shuffle()[0]
  winner.win() if winner

