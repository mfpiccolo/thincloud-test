require "rails/all" # Oh yeah!
require "rails/generators"
require "generators/thincloud/test/test_generator"

module Thincloud
  module Test
    class Generator
      def self.generate
        ::Thincloud::Generators::TestGenerator.new.standalone
      end
    end
  end
end
