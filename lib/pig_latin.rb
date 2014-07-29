require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def self.check_input(word)
    if word.class == String
      true
    end
  end

  def self.first_letter_y(word)
    if word =~ /\A[yY]/
      top = word.slice!(0)
      word = word + top + "ay"
    end
  end

  def self.first_letter_consonant(word)
    if word !~ /\A[aAeEiIoOuU]/
      top = word.slice!(0)
      word = word + top + "ay"
    end
  end
  
  def self.first_letter_vowel(word)
    if word =~ /\A[aAeEiIoOuU]/
      word + "way"
    end
  end
end
