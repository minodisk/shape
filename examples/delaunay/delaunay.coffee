{ Svg } = shape

document.addEventListener 'DOMContentLoaded', ->
  body = document.querySelector 'body'
  svg = new Svg
  body.appendChild svg[0]
