# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kitchen/driver/hyperv_version'

Gem::Specification.new do |spec|
  spec.name          = "kitchen-hyperv"
  spec.version       = Kitchen::Driver::HYPERV_VERSION
  spec.authors       = ["Steven Murawski"]
  spec.email         = ["steven.murawski@gmail.com"]
  spec.summary       = 'Hyper-V Driver for Test-Kitchen'
  spec.description   = 'Hyper-V Driver for Test-Kitchen'
  spec.homepage      = "https://github.com/test-kitchen/kitchen-hyperv"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(/LICENSE|^lib|^support/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "cane"
  spec.add_development_dependency "finstyle"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "countloc"
  spec.add_development_dependency "minitest-stub-const"
  spec.add_development_dependency "mocha"

  spec.add_dependency "test-kitchen", ">= 1.4", "< 3"
end
