h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
h.length	#	3
h['dog']	#	"canine"
h['cow'] = 'bovine'
h[12]    = 'dodecine'
h['cat'] = 99
h	#	{"cow"=>"bovine", "cat"=>99, 12=>"dodecine", "donkey"=>"asinine", "dog"=>"canine"}


values = ["ride", "the", "dragon"]
length_pairs = values.map do |string|
  [string, string.length]
end
lengths = Hash[length_pairs]


# functional programming
values = ["ride", "the", "dragon"]
lengths = values.inject({}) do |hash, string|
  hash.merge(string => string.length)
end


