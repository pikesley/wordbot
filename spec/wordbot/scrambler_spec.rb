require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Scramble some words' do
      it 'should scramble "ab"' do
        expect(Wordbot::Bot.scramble 'ab').to eq 'ab'
      end

      it 'should scramble "abc"' do
        expect(Wordbot::Bot.scramble 'abc').to eq 'abc'
      end

      it 'should scramble "abcd"' do
        expect(Wordbot::Bot.scramble 'abcd').to match /^a[bc][bc]d$/
      end

      it 'should scramble "quirkafleeg"' do
        expect(Wordbot::Bot.scramble 'quirkafleeg').to match /^q[uirkafle]{9}g$/
      end

      it 'should not scramble "1974"' do
        expect(Wordbot::Bot.scramble '1974').to eq '1974'
      end
    end
  end
end
