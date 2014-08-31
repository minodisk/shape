Node = require './node'
Point = require '../models/point'

module.exports =
class Polygon extends Node

  constructor: ->
    # super '<polygon>'
    super document.createElementNS "http://www.w3.org/2000/svg", "polygon"

  setPoints: (points...) ->
    @attr points: (point.toString() for point in points).join ' '
