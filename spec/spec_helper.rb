ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'factory_girl'
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
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.find_definitions