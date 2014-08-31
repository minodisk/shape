{ Svg, Polygon } = shape

document.addEventListener 'DOMContentLoaded', ->
  body = document.querySelector 'body'
  svg = new Svg
  polygon = new Polygon
  polygon.setPoints [100,10], [150, 110], [60,20]
  polygon.fill 'green'
  svg.append polygon
  body.appendChild svg[0]
  # svg.html '<polygon points="200,10 250,190 160,210" style="fill:lime;stroke:purple;stroke-width:1"/>'

  # document.write '<svg height="210" width="500">
  #   <polygon points="200,10 250,190 160,210" style="fill:lime;stroke:purple;stroke-width:1"/>
  #   Sorry, your browser does not support inline SVG.
  # </svg>'
