require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../player.rb')
require_relative('../hidden_word.rb')
require_relative('../game.rb')
require_relative('../runner.rb')


class PlayerTest < MiniTest::Test


    def setup()
        @player1 = Player.new("Keith")
        @word1 = HiddenWord.new("CodeClan")

        @game1 = (@player1, @word1)
    end


end
