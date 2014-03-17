class MainRouter extends Backbone.Router
  routes:
    '': 'categories'
    ':category_id': 'checklists'

  categories: ->
    @pageView?.remove()
    @pageView = new CategoriesPage
      collection: @data.categories

  checklists: (category_id) ->
    @pageView?.remove()
    @pageView = new ChecklistsPage
      collection: @data.checklists
      category_id: category_id

  prepareData: ->
    @data =
      categories: new Categories()
      checklists: new Checklists()

  initialize: ->
    @prepareData()

window.MainRouter = MainRouter
