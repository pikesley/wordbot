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
      map %w(-g --generate) => :generate

      desc 'tweet', 'Tweet the mutilated text'
      def tweet *words
        yaml = YAML.load File.open "#{ENV['HOME']}/.wordbotrc"
        client = Twitter::REST::Client.new do |config|
          config.consumer_key        = yaml['twitter']['consumer']['key']
          config.consumer_secret     = yaml['twitter']['consumer']['secret']
          config.access_token        = yaml['twitter']['oauth']['token']
          config.access_token_secret = yaml['twitter']['oauth']['secret']
        end

        tweet = Wordbot::Bot.mutilate words.join ' '
        client.update tweet
      end
      map %w(-t --tweet) => :tweet
    end
  end
end
