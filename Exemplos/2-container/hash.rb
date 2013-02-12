#Exercícios com Hashing
#inicialização
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}

# número de elementos
h.length	#	3

#acessando elemento pela chave
h['dog']	#	"canine"

# alterando o valor de um elemento
h['cow'] = 'bovine'
h[12]    = 'dodecine'
h['cat'] = 99
h	#	{"cow"=>"bovine", "cat"=>99, 12=>"dodecine", "donkey"=>"asinine", "dog"=>"canine"}


# um método especial de criar Hash a partir de uma lista
values = ["ride", "the", "dragon"]
length_pairs = values.map do |string|
  [string, string.length]
end
lengths = Hash[length_pairs]


# o mesmo efeito, utilizando programação funcional
values = ["ride", "the", "dragon"]
lengths = values.inject({}) do |hash, string|
  hash.merge(string => string.length)
end


