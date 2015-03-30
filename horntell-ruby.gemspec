# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'horntell/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "horntell-ruby"
  spec.version       = Horntell::Ruby::VERSION
  spec.authors       = ["Mohit Mamoria"]
  spec.email         = ["mohit.mamoria@gmail.com"]
  spec.summary       = "Horntell SDK for Ruby"
  spec.description   = ""
  spec.homepage      = "http://horntell.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
