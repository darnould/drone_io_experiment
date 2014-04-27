# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'drone_io_experiment/version'

Gem::Specification.new do |spec|
  spec.name          = "drone_io_experiment"
  spec.version       = DroneIOExperiment::VERSION
  spec.authors       = ["Dan Arnould"]
  spec.email         = ["dan@arnould.co.uk"]
  spec.summary       = %q{Messing around with drone.io..}
  spec.description   = %q{Messing around with drone.io..}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "timecop"

  spec.add_runtime_dependency "sinatra"
end
