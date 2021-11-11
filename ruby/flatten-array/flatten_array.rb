# frozen_string_literal: true

# FlattenArray module
module FlattenArray
  class << self
    def flatten(array, result = [])
      array.each do |element|
        if element.is_a? Array
          flatten(element, result)
        else
          result << element unless element.nil?
        end
      end
      result
    end
  end
end
