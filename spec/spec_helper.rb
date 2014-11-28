ENV['RACK_ENV'] = 'test'

require './server'
require 'database_cleaner'
require 'capybara/rspec'


  RSpec.configure do |config|

    config.run_all_when_everything_filtered = true
    config.filter_run :focus

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


