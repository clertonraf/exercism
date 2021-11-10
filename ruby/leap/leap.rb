# frozen_string_literal: true

class Year
  class << self
    def leap?(year)
      (year % 4).zero? && ((year % 100 != 0) || (year % 400).zero?)
    end
  end
end
