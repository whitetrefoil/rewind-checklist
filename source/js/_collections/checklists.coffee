class Checklists extends Backbone.Collection
  localStorage: new Backbone.LocalStorage('Checklists')
  model: Checklist

window.Checklists = Checklists
