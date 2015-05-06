ctx = document
  .getElementById "game"
  .getContext "2d"

ctx.fillStyle = "#000"
ctx.fillRect 0, 0, ctx.canvas.width, ctx.canvas.height

###
Parameter	Description	- 0,0,width,height
x	The x-coordinate of the upper-left corner of the rectangle
y	The y-coordinate of the upper-left corner of the rectangle
width	The width of the rectangle, in pixels
height	The height of the rectangle, in pixels
###

noise = ->
  for x in [0..20]
    for y in [0..10]
      color = Math.floor(Math.random() * 360)
      ctx.fillStyle = "hsl(#{color}, 60%, 50%)"
      ctx.fillRect x * 15, y * 15, 15, 15

setInterval noise, 100

### NOTES

-- Math.random() --
The Math.random() function returns a floating-point,
pseudo-random number in the range [0, 1) that is,
from 0 (inclusive) up to but not including 1 (exclusive).

-- HSL --
HSL stands for hue, saturation, and lightness -
and represents a cylindrical-coordinate representation of colors.
http://i.stack.imgur.com/3zJuP.png

###
