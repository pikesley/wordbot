module Wordbot
  module CLI
    class Mutilator < Thor
      desc 'version', 'Print the version'
      def version
        puts "mutilator version %s" % [
          VERSION
        ]
      end
      map %w(-v --version) => :version

      desc 'generate', 'Generated some mutilated text'
      def generate *words
        puts Wordbot::Bot.mutilate words.join ' '
      end
    end
  end
end
