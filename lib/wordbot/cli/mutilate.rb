module Wordbot
  module CLI
    class Mutilate < Thor
      desc 'version', 'Print the version'
      def version
        puts "mutilate version %s" % [
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
