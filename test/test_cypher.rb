require 'test/unit'
require_relative './support/test_data'

class TestCypher < Test::Unit::TestCase

  def test_one_character_range
    62.times do |number|
      assert_equal Alnum::cypher(number), "#{SYMBOLS[number]}"
    end
  end

  def test_only_integers_allowed
    assert_raise TypeError do
      Alnum::cypher('a')
    end   
  end

  def test_empty_arguments
    assert_raise ArgumentError do
      Alnum::cypher()
    end
  end

end