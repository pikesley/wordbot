# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wordbot/version'

Gem::Specification.new do |spec|
  spec.name          = 'wordbot'
  spec.version       = Wordbot::VERSION
  spec.authors       = ['pikesley']
  spec.email         = ['sam@pikesley.org']
  spec.summary       = %q{Do some stuff with text}
  spec.description   = %q{}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'twitter', '~> 5.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'guard', '~> 2.10'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'cucumber', '~> 1.3'
  spec.add_development_dependency 'aruba', '~> 0.6'
  spec.add_development_dependency 'guard-cucumber', '~> 1.5'
  spec.add_development_dependency 'terminal-notifier-guard', '~> 1.6'
  spec.add_development_dependency 'coveralls', '~> 0.7'
end
