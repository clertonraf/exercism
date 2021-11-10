# frozen_string_literal: true

class Pangram
  class << self
    def pangram?(phrase)
      return false if phrase.empty?

      count = ('a'..'z').to_a.map(&:ord).zip(Array.new(26, 0)).to_h
      phrase.downcase.gsub(/[^[a-z]]/, '').chars
            .each { |element| count[element.ord] += 1 }
      count.values.all?(&:positive?)
    end
  end
end
