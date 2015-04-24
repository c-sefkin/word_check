class String
  define_method(:word_check) do |sentence|
    word = self.downcase()
    lower_sentence = sentence.downcase()
    original_sentence = lower_sentence.split()
    result = original_sentence.count(word)
    result
  end
end
