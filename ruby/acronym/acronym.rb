class Acronym
    def self.abbreviate(words)
        (words.gsub(/[-]/, " ").gsub(/[^\w\s]/,"").split(" ").map {|word| word[0].capitalize}).join
    end
end
