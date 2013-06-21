if RUBY_ENGINE == "ruby"
  begin
    require "simplecov"
    SimpleCov.start do
      add_filter "/test/"
      add_filter "/config/"
      command_name "Minitest"
    end
  rescue LoadError
    warn "unable to load SimpleCov"
  end
end
