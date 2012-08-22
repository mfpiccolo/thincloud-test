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

        empty_directory "spec/models"
        empty_directory "spec/controllers"
        empty_directory "spec/mailers"
        empty_directory "spec/helpers"
        empty_directory "spec/support"

        run "touch spec/{models,controllers,mailers,helpers,support}/.gitkeep"

        copy_file "spec_helper.rb", "spec/spec_helper.rb"

        copy_file "spec.rake", "lib/tasks/spec.rake"

        copy_file "Guardfile"

        append_file ".gitignore", "coverage"

        say_status "", ""
        say_status "success", "thincloud-test has finished."
        say_status "", "Don't forget to run `bundle`"
      end

    end
  end
end
