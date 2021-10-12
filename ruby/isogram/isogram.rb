# frozen_string_literal: true

# class to define wheater the word is a Isogram
class Isogram
  def self.isogram?(input)
    input.downcase.gsub(/\W/, '').split('').sort.uniq.join == input.downcase.gsub(/\W/, '').split('').sort.join
  end
end
