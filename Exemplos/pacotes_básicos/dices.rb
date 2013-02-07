#calcular a diferenca media no lancamento de dois dados (D6)
x = (1..1000).reduce(0.0){|acc| 
  a = Random.rand(5) + 1
  b = Random.rand(5) + 1
  acc += (a-b).abs
}
puts x/1000