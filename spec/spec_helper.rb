require 'rack/test'
require_relative '../config/environment'

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.order = "random"
  config.include RSpecMixin
end