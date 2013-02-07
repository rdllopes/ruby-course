require "./math"
require "./stringify"
require "./currency_formatter"

# Base Number class
class Number
  def intValue
    @value
  end
end
 
# BigInteger extends Number
class BigInteger < Number
 
 
  # Add instance methods from Stringify
  include Stringify
 
  # Add class methods from Math
  extend Math
 
  # Add a constructor with one parameter
  def initialize(value)
    @value = value
  end
end


# Create a new object
bigint1 = BigInteger.new(10)
# Call a method inherited from the base class
puts bigint1.intValue   # --> 10

# Call class method extended from Math
bigint2 = BigInteger.add(-2, 4)
puts bigint2.intValue   # --> 2

# Call a method included from Stringify
puts bigint2.stringify   # --> 'Two'

# Add the module methods to
# this object instance, only!
bigint2.extend CurrencyFormatter
puts bigint2.format   # --> '$2'

