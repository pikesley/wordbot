require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Split some strings' do
      it 'should split the simplest string' do
        expect(Wordbot::Bot.split 'a').to eq ['a']
      end
    end
  end
end
