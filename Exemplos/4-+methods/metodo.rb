# exemplo de uso de default
# a função abaixo calcula a área de um retângulo.
# Note:
# 1) a ordem dos parâmetros não importa
# 2) qualquer parâmetro é opcional
def area(dimensoes)
  dimensoes = {:largura => 1, :altura =>1}.merge dimensoes
  dimensoes[:largura] * dimensoes[:altura]
end

area(:largura => 120)
area(:altura => 12)
area(:largura => 120, :altura => 12)
