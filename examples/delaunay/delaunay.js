(function() {
  document.addEventListener('DOMContentLoaded', function() {
    var body, shape;
    body = document.querySelector('body');
    shape = new Shape;
    return body.appendChild(shape);
  });

}).call(this);
