# Exemplo de uso de módulo
module Trig
  PI = 3.141592654
  
  # calcula sin usando série de Taylor
  def Trig.sin(x)
    result = term = x
    signal = 1
    for i in (1..10)
      signal *= -1
      term *= x**2 / (i*2*(i*2 + 1))
      result += signal * term 
    end
    result
  end
  
  def Trig.cos(x)
   # ..
  end
end

