require_relative '../alnum'

module Alnum

	class Decipher

		def read(alphanumeric)
			number = 0
			count = 0

			alphanumeric.to_s.reverse.each_char() do |c|
				raise RangeError, "Code contains characters out of range: '#{c}'" if SYMBOLS.index(c).nil?
				number += SYMBOLS.index(c) * BASE**count
				count += 1
			end

			number
		end
		
	end

end