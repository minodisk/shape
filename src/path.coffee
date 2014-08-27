Node = require './node'

module.exports =
class Path extends Node

  constructor: ->
    super document.createElement 'path'
