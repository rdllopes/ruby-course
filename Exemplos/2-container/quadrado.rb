#calcular o quadrado de um número n natural
# como a soma dos n primeiros números ímpares naturais
def quadrado(n)
  n_primeiros_impares = (1..2*n).to_a.find_all{|i| i.odd?}
  n_primeiros_impares.inject(:+)
end

puts quadrado(8)