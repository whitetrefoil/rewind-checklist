#= require '../_tmpl/checklists'

class ChecklistsPage extends Backbone.View
  el: 'body'

  compose: ->
    checklists: @collection.where({category_id: @category_id}).map (checklist) -> checklist.toJSON()

  remove: ->
    @$el.empty()
    @stopListening()

  render: ->
    @$el[0].innerHTML = HandlebarsTemplates.checklists(@compose())

  initialize: (options) ->
    @category_id = options.category_id
    @collection.fetch().done @render.bind(@)

window.ChecklistsPage = ChecklistsPage
