require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Split some strings' do
      it 'should split "a"' do
        expect(Wordbot::Bot.split 'a').to eq ['a']
      end

      it 'should split "a "' do
        expect(Wordbot::Bot.split 'a ').to eq ['a', ' ']
      end

      it 'should split "aa bb"' do
        expect(Wordbot::Bot.split 'aa bb').to eq ['aa', ' ', 'bb']
      end

      it 'should split'
    end
  end
end
