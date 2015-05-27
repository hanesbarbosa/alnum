require 'test/unit'
require_relative '../lib/alnum/cypher'
require_relative './support/test_data'

class TestCypher < Test::Unit::TestCase

  def setup
    @cypher = Alnum::Cypher.new
  end

  def test_one_character_range
    62.times do |number|
      assert_equal @cypher.write(number), "#{SYMBOLS[number]}"
    end
  end

  def test_only_integers_allowed
    assert_raise TypeError do
      @cypher.write('a')
    end   
  end

  def test_empty_arguments
    assert_raise ArgumentError do
      @cypher.write()
    end
  end

end