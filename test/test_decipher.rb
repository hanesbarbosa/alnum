require 'test/unit'
require_relative './support/test_data'

class TestDecipher < Test::Unit::TestCase

  def test_one_character_range
    62.times do |number|
      assert_equal Alnum.decipher(SYMBOLS[number]), number
    end
  end

  def test_character_out_of_range
    assert_raise RangeError do
      Alnum.decipher('-')
    end
  end

  def test_empty_arguments
    assert_raise ArgumentError do
      Alnum.decipher()
    end
  end

end