# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tekton_scaffold/version'

Gem::Specification.new do |spec|
  spec.name          = "tekton_scaffold"
  spec.version       = TektonScaffold::VERSION
  spec.authors       = ["Julio Castillo"]
  spec.email         = ["julio.castillo@tektonlabs.com"]
  spec.summary       = "Admin interface generator."
  spec.description   = "Admin interface generator."
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.authors     = ['Julio Castillo']

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "lib/generators"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
