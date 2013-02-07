
# A Math module akin to Java Math class.
module Math
  
  def self.extended(base)
    puts "Initialize module(Math)"
  end
  
  # Could be called as a class, static, method
  def add(val_one, val_two)
    BigInteger.new(val_one + val_two)
  end
end