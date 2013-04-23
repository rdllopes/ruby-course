require "test/unit"

class TesteFoo  < Test::Unit::TestCase

  def test_foo
    assert_same(1, 0, "Que pena")
    puts "Teste"
  end
end
