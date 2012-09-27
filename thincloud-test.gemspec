# -*- encoding: utf-8 -*-
require File.expand_path("../lib/thincloud/test/version", __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Robert Bousquet", "Phil Cohen", "Don Morrison"]
  s.email         = ["rbousquet@newleaders.com", "pcohen@newleaders.com",
                     "dmorrison@newleaders.com"]
  s.description   = "Test harness generator for new Thincloud apps."
  s.summary       = "Test harness generator for new Thincloud apps."
  s.homepage      = "http://newleaders.github.com/thincloud-test"

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "thincloud-test"
  s.require_paths = ["lib"]
  s.version       = Thincloud::Test::VERSION

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "cane", "~> 2.3.0"
  s.add_dependency "guard", "~> 1.4.0"
  s.add_dependency "factory_girl_rails", "~> 4.1.0"
  s.add_dependency "minitest", "~> 3.5.0"
  s.add_dependency "guard-minitest", "~> 0.5.0"
  s.add_dependency "minitest-rails", "~> 0.2.0"
  s.add_dependency "minitest-rails-shoulda", "~> 0.2.0"
  s.add_dependency "rb-fsevent", "~> 0.9.1"
  s.add_dependency "simplecov", "~> 0.6.4"
  s.add_dependency "mocha", "~> 0.12.5" # Must be after minitest
end
