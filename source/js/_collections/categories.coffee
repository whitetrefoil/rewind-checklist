class Categories extends Backbone.Collection
  localStorage: new Backbone.LocalStorage('Categories')
  model: Category
  fetch: (args...) ->
    @promise = Backbone.Collection::fetch.apply this, args

window.Categories = Categories
