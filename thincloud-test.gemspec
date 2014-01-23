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

  s.add_dependency "guard", "~> 1.8"
  s.add_dependency "minitest", ">= 4.2"
  s.add_dependency "guard-minitest", "~> 1.0.0.rc.2"
  s.add_dependency "terminal-notifier-guard", "~> 1.5"
  s.add_dependency "thor", "~> 0.18"
  s.add_dependency "mocha", "~> 0.14" # Must be after minitest

  s.add_development_dependency "rake"
end
