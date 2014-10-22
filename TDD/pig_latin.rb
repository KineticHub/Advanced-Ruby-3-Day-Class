#pig_latin.rb

class PigLatinTranslator
  def translate(input)
    first_vowel_index = input.index(/[aeiouy]/)
    end_letters = (input[0] == 'y') ? 'y' : input[0..first_vowel_index-1]
    input[first_vowel_index..input.size] + end_letters + 'ay'
  end
end