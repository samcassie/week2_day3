require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../player.rb')
require_relative('../hidden_word.rb')
require_relative('../game.rb')


class PlayerTest < MiniTest::Test


    def setup()

        @game1 = Game.new(@player1, @word1)

        @player1 = Player.new("Keith")

        @word1 = HiddenWord.new("CodeClan")
    end

    def test_is_letter_in_word_false
        assert_equal(false, @game1.is_letter_within_hidden_word(@word1.into_array, "z"))
    end

    def test_position_of_guessed_letter
        @game1.add_guessed_letter(@player1.guessed_letter("o"))
        assert_equal(["o"], @game1.guessed_letter)
    end

    # def test_guessed_letter_in_hidden_word
    #     assert_equal([1], @game1.reveal_letter(@word1.into_array, "o"))
    # end

end
