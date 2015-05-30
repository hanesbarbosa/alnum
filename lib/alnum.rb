require_relative 'alnum/symbols'

module Alnum

  BASE = SYMBOLS.length

  def self.cypher(number)
    raise TypeError, "Only integers allowed" unless number.is_a? Integer   

    numbers = []

    until number < BASE do
      remainder = number % BASE
      numbers << SYMBOLS[remainder]
      number = (number - remainder) / BASE
    end

    numbers << SYMBOLS[number]
    numbers.reverse.join
  end

  def self.decipher(alphanumeric)
    number, count = 0, 0

    alphanumeric.to_s.reverse.each_char() do |c|
      raise RangeError, "Code contains characters out of range: '#{c}'" if SYMBOLS.index(c).nil?
      number += SYMBOLS.index(c) * BASE**count
      count += 1
    end

    number    
  end

end