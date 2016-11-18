class String
  define_method(:word_count) do |string_word|
    counter = 0
    input_string_word = self.downcase().split()
    input_string_word.each do |word|
      if string_word == word
        counter += 1
      end
    end
    counter
  end
end
