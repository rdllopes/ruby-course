
def area(hash ={:largura => 1, :altura =>1})
  hash = {:largura => 1, :altura =>1}.merge hash
  hash[:largura] * hash[:altura]
end

area(:largura => 123)