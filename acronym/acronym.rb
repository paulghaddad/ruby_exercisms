class Acronym
  def self.abbreviate(phrase)
    acronym_letter = /[\s-]|[^A-Z](?=[A-Z])/
    phrase.split(acronym_letter).inject("") do |acronym, word|
      acronym << word[0].upcase
    end
  end
end
