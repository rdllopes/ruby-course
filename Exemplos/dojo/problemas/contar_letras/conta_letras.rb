class ContaLetras
  NUMEROS = {
    0 => 4,
    1 => 2,
    2 => 4,
    3 => 4,
    4 => 6,
    5 => 5,
    6 => 4,
    7 => 4,
    8 => 4,
    9 => 4,
    10 => 3,
    11 => 4,
    12 => 4,
    13 => 5,
    14 => 8,
    15 => 6,
    16 => 9,
    17 => 9,
    18 => 7,
    19 => 8,
    20 => 5,
    30 => 6
  }
  def initialize(numero)
    @numero = numero
  end
  
  def tamanho
    return NUMEROS[@numero] if @numero < 21
    
    dezena = (@numero / 10) * 10
    unidade = @numero - dezena
    
    NUMEROS[dezena] + NUMEROS[unidade]
  end
end
