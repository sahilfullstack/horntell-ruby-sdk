# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'horntell/version'

Gem::Specification.new do |spec|
  spec.name          = "horntell"
  spec.version       = Horntell::VERSION
  spec.authors       = ["Mohit Mamoria"]
  spec.email         = ["mohit@horntell.com"]
  spec.summary       = "Horntell SDK for Ruby"
  spec.description   = "This SDK allows you to easily integrate Horntell in your Ruby applications."
  spec.homepage      = "http://github.com/horntell/ruby-sdk"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.required_ruby_version     = '>= 1.9.2'
  
  spec.add_dependency('rest-client', '~> 1.4')
  spec.add_dependency('json', '~> 1.8.1')

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
