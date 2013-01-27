require "thor"

module Thincloud
  module Test
    class TestGenerator < ::Thor::Group
      include ::Thor::Actions

      source_root File.expand_path("../templates", __FILE__)

      desc "Generates thincloud test infrastructure outside of Rails"
      def testify!(opts = {})
        setup_minitest if opts.fetch(:minitest, true)

        copy_file "support/minitest_reporters.rb",
          "test/support/minitest_reporters.rb"

        copy_file "support/mocha.rb", "test/support/mocha.rb"

        copy_file "test.rake", "lib/tasks/test.rake"

        copy_file "Guardfile"

        setup_ci

        update_gitignore

        say_status "", ""
        say_status "success", "thincloud-test has finished."
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

      def setup_minitest
        remove_file "test/test_helper.rb"
        copy_file "minitest_helper.rb", "test/minitest_helper.rb"
      end

    end
  end
end
