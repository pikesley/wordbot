require 'spec_helper'

module Wordbot
  describe Word do
    it 'should have content' do
      word = Word.new 'something'
      expect(word.content).to eq 'something'
      expect(word[:content]).to eq 'something'
    end

    it 'should collect pre-punctuation' do
      word = Word.new '"Quoted"'
      expect(word.pre).to eq '"'
      expect(word.post).to eq '"'
    end
  end
end
