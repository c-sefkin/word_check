class String
  define_method(:word_check) do |sentence|
    word = self.downcase()
    lower_sentence = sentence.downcase.delete('^a-z ')
    array_sentence = lower_sentence.split()
    result = array_sentence.count(word)
    result
  end
end
