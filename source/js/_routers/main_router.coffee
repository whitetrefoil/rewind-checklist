class MainRouter extends Backbone.Router
  routes:
    '': 'categories'
    ':categoryId': 'checklists'
    ':categoryId/:checklistId': 'checklist'

  categories: ->
    @pageView?.remove()
    @pageView = new CategoriesPage()

  checklists: (categoryId) ->
    @pageView?.remove()
    @pageView = new ChecklistsPage
      categoryId: categoryId

  checklist: (categoryId, checklistId) ->
    @pageView?.remove()
    @pageView = new ChecklistPage
      checklistId: checklistId
      categoryId: categoryId

window.MainRouter = MainRouter
