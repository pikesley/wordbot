module Wordbot
  class Bot
    def self.split string
      compress string.split /([^A-Za-z])/
    end

    def self.compress list
      a = []
      buffer = ''

      list.each do |i|
        if is_word i
          unless buffer == ''
            a.push buffer
            buffer = ''
          end
          a.push i
        else
          buffer << i
        end
      end

      unless buffer == ''
        a.push buffer
      end

      a
    end

    def self.scramble word
      return word unless is_word word
      word = word.split ''
      front = word.shift
      back = word.pop

      '%s%s%s' % [
        front,
        word.shuffle.join(''),
        back
      ]
    end

    def self.is_word string
      return false if string == ''
      string.split('').all? { |c| is_letter c }
    end

    def self.is_letter char
      'abcdefghijklmnopqrstuvwxyz'.index char.downcase
    end
  end
end
