require 'spec_helper'

module Wordbot
  describe Bot do
    context 'Mutilate some strings' do
      it 'should mutilate "This contains some words"' do
        expect(Wordbot::Bot.mutilate 'This contains some words')
          .to match /^T..s c......s s..e w...s$/
      end

      it 'should mutilate "This has a 74 in it"' do
        expect(Wordbot::Bot.mutilate 'This has a 74 embedded in it')
          .to match /^T..s has a 74 e......d in it$/
      end

      it 'should mutilate "What about a hyphenated-word?"' do
        expect(Wordbot::Bot.mutilate 'What about a hyphenated-word?')
          .to match /^W..t a...t a h........d-w..d\?$/
      end

      it 'should mutilate "And some [other] bits \'of\' {punctuation}!"' do
        expect(Wordbot::Bot.mutilate "And some [other] bits 'of' {punctuation}!")
          .to match /^And s..e \[o...r\] b..s 'of' \{p.........n\}!/
      end
    end
  end
end
