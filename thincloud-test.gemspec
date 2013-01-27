# -*- encoding: utf-8 -*-
require File.expand_path("../lib/thincloud/test/version", __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Robert Bousquet", "Phil Cohen", "Don Morrison"]
  s.email         = ["rbousquet@newleaders.com", "pcohen@newleaders.com",
                     "dmorrison@newleaders.com"]
  s.description   = "Opinionated test dependencies and conventions for " <<
                    "Ruby applications."
  s.summary       = "Opinionated test dependencies and conventions for " <<
                    "Ruby applications."
  s.homepage      = "http://newleaders.github.com/thincloud-test"

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "thincloud-test"
  s.require_paths = ["lib"]
  s.version       = Thincloud::Test::VERSION

  s.add_dependency "cane", "~> 2.5.2"
  s.add_dependency "guard", "~> 1.6.1"
  s.add_dependency "minitest", "~> 4.5.0"
  s.add_dependency "minitest-reporters", "~> 0.14.7"
  s.add_dependency "guard-minitest", "~> 0.5.0"
  s.add_dependency "rb-fsevent", "~> 0.9.1"
  s.add_dependency "simplecov", "~> 0.7.1"
  s.add_dependency "terminal-notifier-guard", "~> 1.5.3"
  s.add_dependency "thor", "~> 0.17.0"
  s.add_dependency "mocha", "~> 0.13.2" # Must be after minitest

  s.add_development_dependency "rake"
end
