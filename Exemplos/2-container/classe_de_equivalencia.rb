# Esses dois segmentos de código são "equivalentes"
# eles agrupam os números de 1 a 100 em classes de equivalencia de 5
hash = {}; (1..100).each{|i| hash[i%5] ||= []; hash[i%5] += [i]}; hash

(1..100).group_by {|i| i%5}