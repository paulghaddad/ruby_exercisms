class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = sanitize(phrase)
  end

  def word_count
    words = phrase.split(' ')
    words.each_with_object({}) do |word, library|
      if library[word]
        library[word] += 1
      else
        library[word] = 1
      end
    end
  end

  private

  def sanitize(phrase)
    phrase.downcase.gsub(/,/, " ").gsub(/[^\w\s']/, "").gsub(/\s\s/, " ")
  end
end
