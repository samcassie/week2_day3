class HiddenWord

    attr_accessor :word, :word_into_array

    def initialize(word)
        @word = word
        @word_into_array = []
    end

    def into_array
        @word_into_array = @word.downcase.split("")
    end

end
