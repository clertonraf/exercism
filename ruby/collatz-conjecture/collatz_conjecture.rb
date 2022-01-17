# frozen_string_literal: true

# class to calculate the Collatz Conjecture
class CollatzConjecture
  class << self
    def steps(number, step = 0)
      raise ArgumentError.new('Argument is not Numeric') unless number.positive?

      return step if number == 1

      if number.even?
        steps(number / 2, step + 1)
      else
        steps((3 * number) + 1, step + 1)
      end
    end
  end
end
