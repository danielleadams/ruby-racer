# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby-racer/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-racer"
  spec.version       = RubyRacer::VERSION
  spec.authors       = ["Danielle Adams"]
  spec.email         = ["adamzdanielle@gmail.com"]
  spec.summary       = %q{Gem to challenge Ruby methods.}
  spec.description   = %q{Write your own Ruby methods and race them against the methods written in CRuby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
