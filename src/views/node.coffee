View = require './view'

module.exports =
class Node extends View

  fill: (fillStyle) ->
    @css fill: fillStyle

  stroke: (strokeStyle) ->
    @css stroke: strokeStyle

  strokeWidth: (width) ->
    @css strokeWidth: width
