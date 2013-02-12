require "./math"
require "./stringify"
require "./currency_formatter"

# Base Number class
class Number
  def intValue
    @value
  end
end
 
# BigInteger estende Number
class BigInteger < Number
 
 
  # Adiciona métodos de instância de Stringify
  include Stringify
 
  # Adiciona métodos de classe de Math
  extend Math
 
  # Adiciona um constructor com um parâmetro
  def initialize(value)
    @value = value
  end
end


# Cria um novo objeto
bigint1 = BigInteger.new(10)

# Chama um método herdado da classe base
puts bigint1.intValue   # --> 10

# Chama um método de classe estendido de Math
bigint2 = BigInteger.add(-2, 4)
puts bigint2.intValue   # --> 2

# Chama um método incluído de Stringify
puts bigint2.stringify   # --> 'Two'

# Adiciona os métodos de módulo para 
# a instância desse objeto somente
bigint2.extend CurrencyFormatter
puts bigint2.format   # --> '$2'

