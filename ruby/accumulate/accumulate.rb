# frozen_string_literal: true

class Array
  def accumulate
    acc = []
    each { |element| acc << (yield element) }
    acc
  end
end
