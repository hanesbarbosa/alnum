require 'test/unit'
require_relative '../lib/alnum/decipher'
require_relative './support/test_data'

class TestDecipher < Test::Unit::TestCase

  def setup
    @decipher = Alnum::Decipher.new   
  end

  def test_one_character_range
    62.times do |number|
      assert_equal @decipher.read(SYMBOLS[number]), number
    end
  end

  def test_character_out_of_range
    assert_raise RangeError do
      @decipher.read('-')
    end
  end

  def test_empty_arguments
    assert_raise ArgumentError do
      @decipher.read()
    end
  end

end