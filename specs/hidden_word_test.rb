require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../hidden_word.rb')

class HiddenWordTest < MiniTest::Test


    def setup()
        @word1 = HiddenWord.new("CodeClan")
    end

    def test_hidden_word_into_an_array
        hidden_word = @word1.into_array
        assert_equal(["c", "o", "d", "e", "c", "l", "a", "n"], hidden_word)
    end

end
