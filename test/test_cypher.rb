require 'test/unit'
require_relative '../lib/alnum/cypher'

class TestCypher < Test::Unit::TestCase

	SYMBOLS = %w{
		0 1 2 3 4 5 6 7 8 9
		a b c d e f g h i j k l m n o p q r s t u v w x y z
		A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
	}

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