# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hack_bot/version'

Gem::Specification.new do |spec|
  spec.name          = "hack_bot"
  spec.version       = HackBot::VERSION
  spec.authors       = ["Geoff Petrie"]
  spec.email         = ["g.petrie@gmail.com"]
  spec.summary       = %q{An irc bot for #openhackabq on freenode, but reusable for anyone.}
  spec.description   = %q{An irc bot built for #openhackabq on freenode, but available for use by anyone.}
  spec.homepage      = "https://github.com/geopet/hack_bot"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "cinch"
end
