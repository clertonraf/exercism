# frozen_string_literal: true

# class to find the nth prime
class Prime
  class << self
    def nth(index)
      raise ArgumentError unless index.positive?

      number = 1
      prime_index = 0
      while prime_index < index
        number += 1
        prime_index += 1 if prime? number
      end
      number
    end

    private

    def prime?(number)
      2.upto(Integer.sqrt(number)) { |num| return false if (number % num).zero? }
      true
    end
  end
end
