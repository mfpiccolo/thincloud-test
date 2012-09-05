require "rails"

module Thincloud
  module Generators
    class TestGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Generates the test harness."
      def test
        gem_group :test do
          gem "factory_girl_rails"
          gem "guard"
          gem "growl"
          gem "minitest"
          gem "mocha"
          gem "guard-minitest"
          gem "minitest-rails"
          gem "minitest-rails-shoulda", "~> 0.1.0"
          gem "simplecov"
        end

        application do
          "config.generators { |g| g.test_framework :mini_test, spec: true, fixture: false }"
        end

        empty_directory "test/models"
        empty_directory "test/controllers"
        empty_directory "test/mailers"
        empty_directory "test/helpers"
        empty_directory "test/support"

        run "touch test/{models,controllers,mailers,helpers,support}/.gitkeep"

        copy_file "minitest_helper.rb", "test/minitest_helper.rb"

        copy_file "test.rake", "lib/tasks/test.rake"

        copy_file "Guardfile"

        append_file ".gitignore", "coverage"

        say_status "", ""
        say_status "success", "thincloud-test has finished."
        say_status "", "Don't forget to run `bundle`"
      end

    end
  end
end
