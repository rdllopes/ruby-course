xi = -180.0
yi = -90.0
dx = 360.0
dy = 180.0
div = 1

x= 179.999
y = -89.999

[[0,0,0]] + ((1..8).map{|i|
  div = div * 2
  [((x - xi) / (dx / div)).floor,  ((y- yi) / (dy / div)).floor, i]
})