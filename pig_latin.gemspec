# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig_latin/version'

Gem::Specification.new do |spec|
  spec.name          = "pig_latin"
  spec.version       = PigLatin::VERSION
  spec.authors       = ["RandyDavis"]
  spec.email         = ["randy_davis@outlook.com"]
  spec.summary       = %q{Converts words to Pig Latin}
  spec.description   = %q{Enter a word and it spits it back out in Pig Latin}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"

  
end
