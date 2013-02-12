=begin
 Um dos meios de encontrar estabelecimentos próximos é
 colocar tags em cada estabelecimento com uma etiqueta da região 
 que ela se encontra. O algoritmo mais básico para realizar 
 o tagging, é particionar a representação plana do globo e atribuir
 um número para cada região.
 
 A localização de um ponto P da Terra se dá por um par de coordenadas
 (x,y) onde (0,0) é o ponto cortado pelo meridiano de Greenwicth e
 pela linha do equador, x é a distância em graus do ponto P ao meridiano
 de Greenwitch (portanto, x pertence a [-180, 180[) e y é a distância em
 graus do ponto P a linha do Equador (portanto, y pertence a [-90, 90]).
 
 Tagging: dado P nas posições X,Y
 Inicialmente a Terra começa com uma partição chamada [0,0,0].
 Para os níveis i de 1 a n:
 Dividir as partições do nível anterior com 1 corte vertical e 
 1 corte horizontal.
 Nomear as partições com uma tripla (x,y,i) onde x é o número
 partições a esquerda (alinhadas horizontalmente), y é o número 
 partições acima (alinhadas verticalmente).
 Atribuir a Tag da partição que o ponto P pertence ao conjunto de Tags
 de resposta.
=end

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