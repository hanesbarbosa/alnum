require 'test/unit'
require_relative '../lib/alnum'
require_relative './support/test_data'

class TestAlnum < Test::Unit::TestCase

  def test_amount_of_symbols
    assert_equal Alnum::SYMBOLS.length, SYMBOLS.length    
  end

  def test_symbols_should_be_the_same
    assert_equal Alnum::SYMBOLS, SYMBOLS
  end

end