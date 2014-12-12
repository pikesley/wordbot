require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Initialization' do
      it 'should split a string' do
        bot = Bot.new 'this is some words'
        expect(bot.words).to eq [
          'this',
          'is',
          'some',
          'words'
        ]
      end

      it 'should split a string containing punctuation' do
        bot = Bot.new 'This, is a sentence, containing punctuation. It may be a question?'
      end
    end
  end
end
