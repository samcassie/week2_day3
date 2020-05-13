class Player

    attr_accessor :lives, :name

    def initialize(name)
        @name = name
        @lives = 3
    end

    def guessed_letter(letter)
        return letter
    end

    def losing_life(result)
        if result == false
            @lives -= 1
            p 'You lost a life!'
            p "#{@lives} left."
            if lives == 0
                p "GAME OVER."
            end
        end
    end

end
