require 'test/unit'
require_relative '../lib/alnum/decipher'

class TestDecipher < Test::Unit::TestCase

	SYMBOLS = %w{
						  	0 1 2 3 4 5 6 7 8 9
						  	a b c d e f g h i j k l m n o p q r s t u v w x y z
						  	A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
						  }

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