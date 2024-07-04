# frozen_string_literal: true

# External Gems
require "sqlite3"
require "anonymous_active_record"
require "silent_stream"

# RSpec Configs
require "config/byebug"
require "config/active_record"
require "config/rspec/reset_defaults"
require "config/rspec/rspec_block_is_expected"
require "config/rspec/rspec_core"
require "config/rspec/silent_stream"
require "config/rspec/version_gem"

# Last thing before loading this gem is to setup code coverage
begin
  # This does not require "simplecov", but
  require "kettle-soup-cover"
  #   this next line has a side-effect of running `.simplecov`
  require "simplecov" if defined?(Kettle::Soup::Cover) && Kettle::Soup::Cover::DO_COV
rescue LoadError
  # We don't load code coverage tools outside the coverage workflow and local development
  nil
end

# This gem gets loaded last
require "active_security"
