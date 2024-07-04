require "logger"

ActiveRecord::Base.logger = Logger.new($stdout)
