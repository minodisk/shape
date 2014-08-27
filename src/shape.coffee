Node = require './node'

module.exports =
class Shape extends Node

  constructor: ->
    super document.createElement 'svg'
