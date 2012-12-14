class Ice.Collections.Chapters extends Backbone.Collection
  model: Ice.Models.Chapter
  url: (models) ->
    "/chapter/" + ((if models then "set/" + _.pluck(models, "id").join(";") + "/" else ""))