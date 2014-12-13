require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Mutilate some strings' do
      it 'should mutilate "This contains some words"' do
        expect(Wordbot::Bot.mutilate 'This contains some words')
          .to match /T..s c......s s..e w...s/
      end
    end
  end
end
