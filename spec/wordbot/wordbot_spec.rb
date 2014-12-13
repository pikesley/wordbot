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

      it 'should split " a "' do
        expect(Wordbot::Bot.split ' a ').to eq [' ', 'a', ' ']
      end

      it 'should'
    end
  end
end
