window.data =
  categories: new Categories()
  checklists: new Checklists()

window.router = new MainRouter()

$ ->
  promises = _(data).map (collection) -> collection.fetch()
  $.when.apply(@, promises).done ->
    Backbone.history.start()
