require 'test/unit' # lib
require './num_feliz'

class NumFelizTest < Test::Unit::TestCase
  def test_num_1_feliz
    numfeliz = NumFeliz.new(1)
    assert numfeliz.feliz?,'deveria ser feliz'   
  end  

  def test_num_1_nao_eh_infeliz
    numfeliz = NumFeliz.new(1)
    assert !numfeliz.infeliz?, 'nao deve ser infeliz'
  end  

  def test_num_2_infeliz
    numfeliz = NumFeliz.new(2)
    assert numfeliz.infeliz?, 'deveria ser infeliz'    
  end
  
  def test_num_7_feliz
    numfeliz = NumFeliz.new(7)
    assert numfeliz.feliz?,'deveria ser feliz'   
  end
end  

=begin
2 => 4 => 16 (1 + 36) => 37 ( 9 + 49) => 58 (25 + 64) 
=> 89 (64 + 81) => 145 (1 + 16 + 25) => 42 (16+4) 
=> 20 (4 + 0) => 4

3 => 9 => 81 (64 + 1) => 65 (36 + 25) => 61 (36 + 1) 
=> 37 (9 + 49) => ...

4 => 16 (1 + 36) => 37, ...

5 => 25 (4 + 25) => 29 (4 + 81) => 85 (64 + 25) => 89 (64 + 81) => ...

6 => 36 (9 + 36) => 45 (16 + 25) => 41 (16 + 1) => 17 (1 + 49) => 50 (25 + 0) => 25 (4 + 25) => ...

7 => 49 (16 + 81) => 97 (81 + 49) => 130 (1 + 9 + 0) => 10 (1 + 0) => 1
=end