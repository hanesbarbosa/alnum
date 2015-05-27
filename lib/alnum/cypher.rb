require_relative '../alnum'

module Alnum

  class Cypher

    def write(number)
      raise TypeError, "Only integers allowed" unless number.is_a? Integer   

      numbers = []
      quotient = 0

      until number < BASE do
        rest = number % BASE
        quotient = (number - rest) / BASE
        numbers << SYMBOLS[rest]
        number = quotient
      end

      numbers << SYMBOLS[number]
      numbers.reverse.join
    end

  end

end