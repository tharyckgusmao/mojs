# ignore coffescript sudo code
### istanbul ignore next ###

Bit = require('./bit').default or require('./bit');

class Line extends Bit
  _draw:->
    radiusX = if @_props.radiusX? then @_props.radiusX else @_props.radius
    @setAttrsIfChanged
      x1:  @_props.x - radiusX
      x2:  @_props.x + radiusX
      y1:  @_props.y
      y2:  @_props.y
    super

module.exports = Line
