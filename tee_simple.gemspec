# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tee_simple/version'

Gem::Specification.new do |spec|
  spec.name          = "tee_simple"
  spec.version       = TeeSimple::VERSION
  spec.authors       = ['windwiny']
  spec.email         = ['windwinyubt+hb@gmail.com']
  spec.summary       = %q{just like tee. output content to stdout and other file}
  spec.description   = %q{just like tee. output content to stdout and other file}
  spec.homepage      = "https://github.com/windwiny/tee_simple"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
