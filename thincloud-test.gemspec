# -*- encoding: utf-8 -*-
require File.expand_path("../lib/thincloud-test/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Robert Bousquet", "Phil Cohen"]
  gem.email         = ["rbousquet@newleaders.com", "pcohen@newleaders.com"]
  gem.description   = "Test harness generator for new Thincloud apps."
  gem.summary       = "Test harness generator for new Thincloud apps."
  gem.homepage      = "http://newleaders.github.com/thincloud-test"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "thincloud-test"
  gem.require_paths = ["lib"]
  gem.version       = Thincloud::Test::VERSION

  gem.add_dependency "rails", "~> 3.2.8"
end
