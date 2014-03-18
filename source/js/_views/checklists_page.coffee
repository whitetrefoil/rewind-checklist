#= require '../_tmpl/checklists'

class ChecklistsPage extends Backbone.View
  el: '#page'

  compose: ->
    category: data.categories.get(@categoryId).toJSON()
    checklists: @collection.where({category_id: @categoryId}).map (checklist) -> checklist.toJSON()

  remove: ->
    @$el.empty()
    @stopListening()

  render: ->
    @$el[0].innerHTML = HandlebarsTemplates.checklists(@compose())

  initialize: (options) ->
    @collection = data.checklists
    @categoryId = options.categoryId
    @collection.fetch().done @render.bind(@)

window.ChecklistsPage = ChecklistsPage
