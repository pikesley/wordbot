module Wordbot
  class Bot
    attr_accessor :words
    
    def initialize words
      @words = words.split
    end
  end
end
