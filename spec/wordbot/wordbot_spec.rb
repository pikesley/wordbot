require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Splitter' do
      it 'should split "a"' do
        expect(Wordbot::Bot.split 'a').to eq ['a']
      end

      it 'should split "a "' do
        expect(Wordbot::Bot.split 'a ').to eq ['a', ' ']
      end

      it 'should split "aa bb"' do
        expect(Wordbot::Bot.split 'aa bb').to eq ['aa', ' ', 'bb']
      end

      it 'should split "aa? bb"' do
        expect(Wordbot::Bot.split 'aa? bb').to eq ['aa', '? ', 'bb']
      end

      it 'should split "Hello, this is a thing!"' do
        expect(Wordbot::Bot.split 'Hello, this is a thing!').to eq [
          'Hello',
          ', ',
          'this',
          ' ',
          'is',
          ' ',
          'a',
          ' ',
          'thing',
          '!'
        ]
      end
    end

    context 'Compressor' do
      it 'should join up the non-word content' do
        expect(Wordbot::Bot.compress ['aa', '?', '', ' ', 'bb']).to eq [
          'aa',
          '? ',
          'bb'
        ]
      end
    end

    context 'Word detector' do
      it 'should recognise a word' do
        expect(Wordbot::Bot.is_word 'aa').to eq true
        expect(Wordbot::Bot.is_word 'abc').to eq true
        expect(Wordbot::Bot.is_word 'Sam').to eq true
        expect(Wordbot::Bot.is_word '123').to eq false
        expect(Wordbot::Bot.is_word '?').to eq false
        expect(Wordbot::Bot.is_word '').to eq false
      end
    end
  end
end
