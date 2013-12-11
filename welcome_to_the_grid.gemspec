# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'welcome_to_the_grid/version'

Gem::Specification.new do |spec|
  spec.name          = "welcome_to_the_grid"
  spec.version       = WelcomeToTheGrid::VERSION
  spec.authors       = ["Jordan Hudgens"]
  spec.email         = ["jord4nhudgens@gmail.com"]
  spec.description   = %q{Creates a grid of variable size with alterable objects}
  spec.summary       = %q{Allows the user to specify the size of a grid and the behavior of characters within that grid}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
