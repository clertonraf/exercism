# frozen_string_literal: true

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  class << self
    def color_code(color)
      COLORS.find_index { |element| element == color }
    end
  end
end
