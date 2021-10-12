# Class to count words
class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = {}
    @phrase.downcase.gsub(/\s'/, ' ').gsub(/'\s/, ' ').gsub(/[^\w\s,']/, '').gsub(/[,\n\t]/, ' ').split(' ').each do |word|
      count.key? word ? (count[word] = count[word] + 1) : count[word] = 1
    end
    count
  end
end
