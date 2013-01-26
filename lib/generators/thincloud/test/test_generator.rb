require "rails"

module Thincloud
  module Generators
    class TestGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Generates thincloud test infrastructure."
      def test
        setup_minitest_rails

        directory "support", "test/support"

        copy_file "test.rake", "lib/tasks/test.rake"

        copy_file "Guardfile"

        update_gitignore

        say_status "", ""
        say_status "success", "thincloud-test has finished."
      end

      # Generates thincloud test infrastructure outside of Rails
      def standalone
        setup_minitest

        copy_file "support/minitest_reporters.rb",
                  "test/support/minitest_reporters.rb"

        copy_file "test.rake", "lib/tasks/test.rake"

        copy_file "Guardfile"

        setup_ci

        update_gitignore

        say_status "", ""
        say_status "success", "thincloud-test standalone has finished."
        say_status "", "Customize .travis.yml and test/ci/* for your project."
      end


    private

      def update_gitignore
        create_file ".gitignore" unless File.exist?(".gitignore")
        append_file ".gitignore", "coverage"
      end

      def setup_ci
        empty_directory "test/ci"
        copy_file "ci/before_script.sh", "test/ci/before_script.sh"
        copy_file "ci/ci_runner.sh", "test/ci/ci_runner.sh"
        copy_file "ci/travis.yml", ".travis.yml"
      end

      def setup_minitest_rails
        generate "mini_test:install"
        remove_file "test/minitest_helper.rb"

        copy_file "minitest_helper_rails.rb", "test/minitest_helper.rb"

        empty_directory "test/factories"
        create_file "test/factories/.gitkeep"
      end

      def setup_minitest
        remove_file "test/test_helper.rb"
        copy_file "minitest_helper_standalone.rb", "test/minitest_helper.rb"
      end

    end
  end
end
