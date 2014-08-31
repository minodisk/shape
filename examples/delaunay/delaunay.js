(function() {
  var Polygon, Svg;

  Svg = shape.Svg, Polygon = shape.Polygon;

  document.addEventListener('DOMContentLoaded', function() {
    var body, polygon, svg;
    body = document.querySelector('body');
    svg = new Svg;
    polygon = new Polygon;
    polygon.setPoints([100, 10], [150, 110], [60, 20]);
    polygon.fill('green');
    svg.append(polygon);
    return body.appendChild(svg[0]);
  });

}).call(this);
