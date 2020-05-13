require_relative('player.rb')
require_relative('hidden_word.rb')
require_relative('game.rb')

#display

game_playing = true

#do u want to start?
p "What is your name?"
name = gets.chomp().to_s()

@player = Player.new(name)

p "Input secret word:"
secret_word = gets.chomp()

@hidden_word = HiddenWord.new(secret_word)
hidden_word = @hidden_word.into_array()

@game = Game.new(@player, @secret_word)

# p hidden_word

while @player.lives > 0
    #show the length of word
    p ("------------------------------")
    hidden_array = (@game.hidden_array(hidden_word))
    p hidden_array

    #get the guessed letter
    p "Input a letter:"
    guess = gets.chomp().downcase()
    @game.add_guessed_letter(@player.guessed_letter(guess))

    #check guessed letter against hidden word
    result = @game.is_letter_within_hidden_word(hidden_word, guess)
    @player.losing_life(result)

    #reveal letters
    if result != false
        p result
        # @game.reveal_letters(hidden_array, guess, result)
    end
end
