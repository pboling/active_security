require "logger"

TEST_LOGGER = Logger.new($stderr)

RSpec.configure do |config|
  config.before do
    # We reset before every test, so we can test
    # what happens when we change defaults
    ActiveSecurity.reset_defaults
    ActiveSecurity.defaults do |config|
      # Restricted is normally already the default,
      # but because we need to override the logger,
      # we also have to reset all the defaults.
      config.use :restricted
      config.logger = TEST_LOGGER
    end
  end
end
