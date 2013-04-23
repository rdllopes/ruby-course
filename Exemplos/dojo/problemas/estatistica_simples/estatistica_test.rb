require "test/unit"
require "./estatistica"

class EstatisticaTest < Test::Unit::TestCase
  def test_obter_valor_minimo
    est = Estatistica.new("6, 9, 15, -2, 92, 11")
    
    assert_equal -2, est.valor_minimo
  end
  
  def test_obter_valor_minimo
    est = Estatistica.new("6, -50, 15, -2, 92, 11")
    
    assert_equal -50, est.valor_minimo
  end
  
  def test_obter_valor_max
    est = Estatistica.new("6, -50, 15, -2, 92, 11")
    
    assert_equal 92, est.valor_maximo
  end
  
  def test_obter_total
    est = Estatistica.new("6, -50, 15, -2, 92, 11")
    
    assert_equal 6, est.total
  end
  
  def test_obter_media
    est = Estatistica.new("6, 9, 15, -2, 92, 11")
    
    assert_in_delta 21.83, est.media, 0.01
  end
end
