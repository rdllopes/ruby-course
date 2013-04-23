class NumFeliz
  def initialize(num)
    @num = num
    @vetor = []
  end 
  
  def feliz?(numero = @num)
    acumulador=0
    numero.to_s.each_char do |n|
      quadrado = n.to_i * n.to_i
      acumulador+=quadrado
    
    end
    if acumulador == 1
      true
    else
      if @vetor.include?(acumulador)
        false
      else
        @vetor << acumulador
        feliz?(acumulador)
      end
    end
  end
  
  def infeliz?(numero = @num)
    !feliz?(numero)
  end
end  