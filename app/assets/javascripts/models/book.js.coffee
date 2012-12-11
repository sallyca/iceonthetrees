class Ice.Models.Book extends Backbone.Model
  
  win: ->
    @set(winner: true)
    @save()
    @trigger('highlight')


