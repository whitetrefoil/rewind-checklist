#= require '../_tmpl/categories'

class CategoriesPage extends Backbone.View
  el: 'body'

  compose: ->
    categories: @collection.toJSON()

  remove: ->
    @$el.empty()
    @stopListening()

  render: ->
    console.log 'c'
    @$el[0].innerHTML = HandlebarsTemplates.categories(@compose())

  initialize: ->
    @collection.fetch().done @render.bind(@)

window.CategoriesPage = CategoriesPage
