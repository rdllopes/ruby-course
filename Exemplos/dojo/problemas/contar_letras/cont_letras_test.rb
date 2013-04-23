require 'test/unit'
require './conta_letras'

class ContaLetrasTest < Test::Unit::TestCase
  
  {
    0 => 4,
    1 => 2,
    8 => 4,
    9 => 4,
    21 => 7,
    39 => 10
  }.each do |key, value|
    define_method "test_conta_#{key}" do
      contador = ContaLetras.new(key)
      
      assert_equal value, contador.tamanho
    end
  end
end
