class Checklists extends Backbone.Collection
  localStorage: new Backbone.LocalStorage('Checklists')
  model: Checklist
  fetch: (args...) ->
    @promise = Backbone.Collection::fetch.apply this, args

window.Checklists = Checklists
