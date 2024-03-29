# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true

  config.before do
    stub_request(
      :any,
      /https?:\/\/poc\.sansorohealth\.com/
    ).to_rack(FakeSansoroApi)
  end

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
