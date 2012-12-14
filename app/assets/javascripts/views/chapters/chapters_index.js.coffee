class Ice.Views.ChaptersIndex extends Backbone.View

  template: JST['chapters/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendChapter)
    this

  appendChapter: (chapter) ->
    view = new Ice.Views.Chapter(model: chapter)
    $("#chapters").append(view.render().el)
