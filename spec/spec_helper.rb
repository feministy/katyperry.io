ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'helpers'
require 'seed_helpers'
require 'database_cleaner'
require_relative '../config/environment'

set :environment, :test

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.order = "random"
  config.include RSpecMixin
  config.include Helpers
  config.include SeedHelpers

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
