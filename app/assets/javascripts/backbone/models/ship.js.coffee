class Iaato.Models.Ship extends Backbone.Model
  url: -> "/api/ships/#{@id}"

  initialize: ->
    @operator = new Iaato.Models.Operator()
    @operator
