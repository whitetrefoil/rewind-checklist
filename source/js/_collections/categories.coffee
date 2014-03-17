class Categories extends Backbone.Collection
  localStorage: new Backbone.LocalStorage('Categories')
  model: Category

window.Categories = Categories
