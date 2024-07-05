begin
  require "byebug" if ENV.fetch("DEBUG", "false").casecmp?("true")
rescue LoadError
  # byebug is only available in local development
end
