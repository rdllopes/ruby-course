class Estatistica
  def initialize(string)
    @string = string.split(", ").map {|num| num.to_i }
  end
  
  def valor_minimo
    @string.min
  end
  
  def valor_maximo
    @string.max
  end
  
  def total
    @string.length
  end
  
  def media
    
    resultado = @string.inject { |acumulado, n|
      acumulado + n
    }
    
    resultado.to_f / total 
      
  end
  
  
end