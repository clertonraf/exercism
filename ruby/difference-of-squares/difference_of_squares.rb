# frozen_string_literal: true

# Square class
class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..@num).to_a.sum**2
  end

  def sum_of_squares
    (1..@num).map { |element| element**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
