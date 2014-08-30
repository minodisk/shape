(function() {
  var Svg;

  Svg = shape.Svg;

  document.addEventListener('DOMContentLoaded', function() {
    var body, svg;
    body = document.querySelector('body');
    svg = new Svg;
    return body.appendChild(svg[0]);
  });

}).call(this);
