require "rails"

module Thincloud
  module Generators
    class TestGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Generates thincloud test infrastructure."
      def test
        generate "mini_test:install"

        empty_directory "test/factories"
        create_file "test/factories/.gitkeep"

        remove_file "test/minitest_helper.rb"
        copy_file "minitest_helper_rails.rb", "test/minitest_helper.rb"

        copy_file "capybara.rb", "test/support/capybara.rb"
        copy_file "factory_girl.rb", "test/support/factory_girl.rb"
        copy_file "database_cleaner.rb", "test/support/database_cleaner.rb"
        copy_file "minitest_rails.rb", "test/support/minitest_rails.rb"
        copy_file "minitest_reporters.rb", "test/support/minitest_reporters.rb"
        copy_file "routing_spec.rb", "test/support/routing_spec.rb"
        copy_file "test.rake", "lib/tasks/test.rake"

        copy_file "Guardfile"

        create_file ".gitignore" unless File.exist?(".gitignore")
        append_file ".gitignore", "coverage"

        say_status "", ""
        say_status "success", "thincloud-test has finished."
      end

      # Generates thincloud test infrastructure outside of Rails
      def standalone
        remove_file "test/test_helper.rb"

        copy_file "minitest_helper_standalone.rb", "test/minitest_helper.rb"
        copy_file "minitest_reporters.rb", "test/support/minitest_reporters.rb"
        copy_file "test.rake", "lib/tasks/test.rake"
        copy_file "Guardfile"

        empty_directory "test/ci"
        copy_file "ci/before_script.sh", "test/ci/before_script.sh"
        copy_file "ci/ci_runner.sh", "test/ci/ci_runner.sh"
        copy_file "ci/travis.yml", ".travis.yml"

        create_file ".gitignore" unless File.exist?(".gitignore")
        append_file ".gitignore", "coverage"

        say_status "", ""
        say_status "success", "thincloud-test has finished."
        say_status "", "Customize .travis.yml and test/ci/* for your project."
      end

    end
  end
end
