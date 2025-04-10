# spec/rails_helper.rb
ENV['RAILS_ENV'] ||= 'test'

require 'rails'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'spec_helper'

require 'spree/core'
require 'spree/api'

module DummyApp
  class Application < Rails::Application
    config.root = File.expand_path('../../dummy', __FILE__)
    config.load_defaults Rails.version.to_f
  end
end

DummyApp::Application.initialize!
