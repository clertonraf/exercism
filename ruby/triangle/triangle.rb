# frozen_string_literal: true

class Triangle
  def initialize(sizes)
    @sizes = sizes
  end

  def equilateral?
    return false if inequal?

    @sizes.uniq.count == 1
  end

  def isosceles?
    return false if inequal?

    @sizes.uniq.count <= 2
  end

  def scalene?
    return false if inequal?

    @sizes.uniq.count == 3
  end

  private

  def inequal?
    @sizes.any?(&:zero?) ||
      @sizes[0] + @sizes[1] < @sizes[2] ||
      @sizes[1] + @sizes[2] < @sizes[0] ||
      @sizes[2] + @sizes[0] < @sizes[1]
  end
end
