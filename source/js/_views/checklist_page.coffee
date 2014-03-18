#= require '../_tmpl/checklist'

class ChecklistPage extends Backbone.View
  el: '#page'

  compose: ->
    @collection.get(@checklistId).toJSON()

  remove: ->
    @$el.empty()
    @stopListening()

  render: ->
    @$el[0].innerHTML = HandlebarsTemplates.checklist(@compose())

  initialize: (options) ->
    @collection = data.checklists
    @categoryId = options.categoryId
    @checklistId = options.checklistId
    if @collection.promise?
      @collection.promise.done @render.bind(@)
    else
      @collection.fetch().done @render.bind(@)

window.ChecklistPage = ChecklistPage
