# frozen_string_literal: true

# Hamming distance in Ruby
class Hamming
  def self.compute(string_a, string_b)
    raise ArgumentError.new('strand with different sizes') if string_a.length != string_b.length
    count = 0
    string_a.split('').each_index { |index| count += 1 if string_a[index] != string_b[index] }
    count
  end
end
