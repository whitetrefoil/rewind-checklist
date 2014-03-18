#= require '../_tmpl/categories'

class CategoriesPage extends Backbone.View
  el: '#page'

  compose: ->
    categories: @collection.toJSON()

  remove: ->
    @$el.empty()
    @stopListening()

  render: ->
    @$el[0].innerHTML = HandlebarsTemplates.categories(@compose())

  initialize: ->
    @collection = data.categories
    @collection.fetch().done @render.bind(@)

window.CategoriesPage = CategoriesPage
