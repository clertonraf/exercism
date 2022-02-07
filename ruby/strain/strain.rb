# frozen_string_literal: true

class Array
  def keep
    to_keep = []
    each do |element|
      result = yield element
      to_keep << element if result
    end
    to_keep
  end

  def discard
    to_discard = []
    each do |element|
      result = yield element
      to_discard << element unless result
    end
    to_discard
  end
end
