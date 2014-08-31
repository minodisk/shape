View = require './view'

module.exports =
class Svg extends View

  constructor: ->
    super document.createElementNS "http://www.w3.org/2000/svg", "svg"
    # @[0].setAttributeNS "http://www.w3.org/2000/xmlns/", "xmlns:xlink", "http://www.w3.org/1999/xlink"
    @attr
      width: '512'
      height: '512'
