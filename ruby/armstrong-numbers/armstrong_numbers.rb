# frozen_string_literal: true

# ArmstrongNumbers
class ArmstrongNumbers
  class << self
    def include?(num)
      digits = num.digits
      digits.sum { |digit| digit**digits.count } == num
    end
  end
end
