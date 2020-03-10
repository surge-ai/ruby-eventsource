# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ld-eventsource/version"

# rubocop:disable Metrics/BlockLength
Gem::Specification.new do |spec|
  spec.name          = "ld-eventsource"
  spec.version       = SSE::VERSION
  spec.authors       = ["LaunchDarkly"]
  spec.email         = ["team@launchdarkly.com"]
  spec.summary       = "LaunchDarkly SSE client"
  spec.description   = "LaunchDarkly SSE client for Ruby"
  spec.homepage      = "https://github.com/launchdarkly/ruby-eventsource"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rspec_junit_formatter", "~> 0.3.0"

  spec.add_runtime_dependency "concurrent-ruby", "~> 1.0"
  spec.add_runtime_dependency "http_tools", '~> 0.4.5'
  spec.add_runtime_dependency "socketry", "~> 0.5.1"
end