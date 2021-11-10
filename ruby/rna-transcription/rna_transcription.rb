# frozen_string_literal: true

class Complement
  TRANSCRIPTION = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }.freeze
  class << self
    def of_dna(dna)
      dna.chars.map { |element| TRANSCRIPTION[element] }.join
    end
  end
end
