# frozen_string_literal: true

# class Scrabble
class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    @word.nil? ? 0 : @word.upcase.split('').reduce(0) { |accumulator, letter| accumulator + get_letter_score(letter) }
  end

  def self.score(word)
    new(word).score
  end

  private

  def get_letter_score(letter)
    case letter
    when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' then 1
    when 'D', 'G' then 2
    when 'B', 'C', 'M', 'P' then 3
    when 'F', 'H', 'V', 'W', 'Y' then 4
    when 'K' then 5
    when 'J', 'X' then 8
    when 'Q', 'Z' then 10
    else 0
    end
  end
end
