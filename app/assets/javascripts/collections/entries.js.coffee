class Ice.Collections.Entries extends Backbone.Collection
  url: '/api/entries'
  

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
