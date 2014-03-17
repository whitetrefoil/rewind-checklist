categories = new Backbone.LocalStorage('Categories')
categories._clear()
categories.create
  id: 'work'
  name: 'Work'
categories.create
  id: 'home'
  name: 'Home'

checklists = new Backbone.LocalStorage('Checklists')
checklists._clear()
checklists.create
  id: 'code-check-in'
  category_id: 'work'
  name: 'Code Check-in'
  items: [
    'Branch'
    'Issue number'
  ]
checklists.create
  id: 'code-review'
  category_id: 'work'
  name: 'Code Review'
  items: [
    'Additional spaces'
    'Typo'
  ]

window.location.href = '/'
