a = [[1,'a'], [2, 'b'], [3, 'c']]
b = a.inject({}){|acc, element|
   acc.merge(element[0] => element[1])
}
b.map{|pair| pair[0]}

# values = ["ride", "the", "dragon"]
# lengths = values.inject({}) do |hash, string|
#   hash.merge(string => string.length)
# end
# puts lengths