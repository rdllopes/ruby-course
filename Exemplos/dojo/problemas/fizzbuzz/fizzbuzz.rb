=begin
Neste problema, você deverá exibir uma lista de 1 a 100, um em cada linha, com as seguintes exceções:

Números divisíveis por 3 deve aparecer como 'Fizz' ao invés do número;
Números divisíveis por 5 devem aparecer como 'Buzz' ao invés do número;
Números divisíveis por 3 e 5 devem aparecer como 'FizzBuzz' ao invés do número'.

f = FizzGuzz.new(1..100)
f.to_s # => '1, 2, Fizz, 4, Buzz'


=end

class FizzBuzz
  def initialize(range)
    @range = range
  end
  
  def translate(num)
    if (num % 3 == 0 and num % 5 == 0)
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num.to_s
    end
  end  
  def to_s
    if @range.respond_to?(:each)
      acumula = ""
      @range.each do |num|
        
        acumula += translate(num) 
        acumula += "," if num < @range.last
        
      end
      return acumula
    else
      translate(@range)
    end
  end
end