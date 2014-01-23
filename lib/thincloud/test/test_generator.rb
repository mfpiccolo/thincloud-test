require "thor"

module Thincloud
  module Test
    class TestGenerator < ::Thor::Group
      include ::Thor::Actions

      source_root File.expand_path("../templates", __FILE__)

      desc "Generates thincloud test infrastructure"
      def testify!
        minitest
        gitignore
        rake
        guard
        mocha

        say_status "", ""
        say_status "success", "thincloud-test has finished."
      end

      private

      def minitest
        copy_file "test_helper.rb", "test/test_helper.rb"
      end

      def gitignore
        create_file ".gitignore" unless File.exist?(".gitignore")
        append_file ".gitignore", "coverage"
      end

      def rake
        create_file "Rakefile" unless File.exist?("Rakefile")
        append_file "Rakefile", "\nDir[\"./lib/tasks/**/*.rake\"].sort.each { |t| load t }\n"
        copy_file "cane.rake", "lib/tasks/cane.rake"
        copy_file "test.rake", "lib/tasks/test.rake"
      end

      def guard
        copy_file "Guardfile"
      end

      def mocha
        copy_file "support/mocha.rb", "test/support/mocha.rb"
      end
    end
  end
end
