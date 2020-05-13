require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../player.rb')
require_relative('../hidden_word.rb')
require_relative('../game.rb')


class PlayerTest < MiniTest::Test


    def setup()
        @player1 = Player.new("Keith")

        @word1 = HiddenWord.new("CodeClan")

        @game1 = Game.new(@player1, @word1)
    end

    def test_player_name
        assert_equal("Keith", @player1.name)
    end

    def test_losing_life
        @player1.losing_life(@game1.is_letter_within_hidden_word(@word1.into_array, "z"))
        assert_equal(2, @player1.lives)
    end

end
