require 'test/unit' # lib
require './fizzbuzz'

class FizzBuzzTest < Test::Unit::TestCase
  def test_se_imprime_fizz_no_lugar_de_3
    fizz = FizzBuzz.new(3)
    
    assert_equal "Fizz", fizz.to_s
  end
  
  def test_se_imprime_buzz_no_lugr_de_5
    buzz = FizzBuzz.new(5)
    assert_equal "Buzz", buzz.to_s
  end
  
  def test_se_imprime_fizzbuzz_em_multiplos_3_e_5
    buzz = FizzBuzz.new(15)
    assert_equal "FizzBuzz", buzz.to_s
  end
  
  def test_imprime_numeros_multiplos_de_nada
    buzz = FizzBuzz.new(16)
    assert_equal "16", buzz.to_s
  end
  
  def test_imprime_numeros_multiplos_de_nada_17
    buzz = FizzBuzz.new(17)
    assert_equal "17", buzz.to_s
  end
  
  def test_imprime_range_1_to_10
    buzz = FizzBuzz.new(1..10)
    assert_equal "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz", buzz.to_s
  end
  
end