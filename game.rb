class Game

    attr_accessor :player, :hidden_word, :guessed_letter

    def initialize(player, hidden_word)
        @player = player
        @hidden_word = hidden_word
        @guessed_letter = []
    end

    def add_guessed_letter(guessed_letter)
        @guessed_letter.push(guessed_letter)
    end

    def is_letter_within_hidden_word(hidden_word, letter_guessed)
        letter_location = []
        for letter in hidden_word
            if letter_guessed == letter
                letter_location.push(hidden_word.index(letter))
                return letter_location
            else
                return false
            end
        end
        return letter_location
    end

    def hidden_array(hidden_word)
        array = []
            for letter in hidden_word
                array.push("*")
            end
        return array
    end

    # def reveal_letters(hidden_array, guess, letter_location)
    #     for index in letter_location
    #         for hidden_letters in hidden_array
    #             hidden_letters[hidden_letters.index(index)] = guess
    #         end
    #     end
    # end






    # def reveal_letter(hidden_word, letter_guessed)
    #     letter_location = []
    #     for letter in hidden_word
    #         if letter_guessed == letter
    #             letter_location.push(hidden_word.index(letter))
    #         end
    #     end
    #     return letter_location
    # end








end
