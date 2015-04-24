class String
  define_method(:word_check) do |sentence|
    original_sentence = sentence.split()
    result = original_sentence.count(self)
    result
  end
end
