class Ice.Models.Book extends Backbone.RelationalModel
  
  win: ->
    @set(winner: true)
    @save()
    @trigger('highlight')

  relations: [{
    type: Backbone.HasMany,
    key: 'chapters',
    relatedModel: 'Ice.Models.Chapter',
    collectionType: 'Ice.Collections.Chapters',
    reverseRelation: {
      key: 'belongsTo',
      includeInJSON: 'id'
    }
  }]


