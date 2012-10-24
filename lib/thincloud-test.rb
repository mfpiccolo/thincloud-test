require "database_cleaner"  # reset database on each test run
require "minitest/autorun"
require "minitest/rails"
require "minitest/pride"          # Provides awesome colorful output
require "minitest-rails-shoulda"

require "thincloud/test"
require "mocha"
require "factory_girl"

module Thincloud
  module Test
  end
end
