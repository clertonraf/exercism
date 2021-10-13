# frozen_string_literal: true

# Luhn algorithm
class Luhn
  def self.valid?(sequence)
    num_sequence = sequence.gsub(/\s/, '').chars

    return false if num_sequence.length <= 1 || num_sequence.any?(/[^0-9]/)

    (parse_sequence(num_sequence.map(&:to_i)).sum % 10).zero?
  end

  def self.parse_sequence(num_sequence)
    num_sequence.reverse.map.with_index { |num, index| index.odd? ? double_digit(num) : num }
  end

  def self.double_digit(num)
    double = num * 2
    double > 9 ? double - 9 : double
  end
end
