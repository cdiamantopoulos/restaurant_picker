require 'cucumber/rails'
require 'simplecov'

SimpleCov.start do
  add_filter "/gems/"
  add_filter "/config/"
  add_filter "/spec/"
  add_filter "/features/"
end

Capybara.javascript_driver = :webkit
ActionController::Base.allow_rescue = false

# Remove/comment out the lines below if your app doesn't have a database.
# For some databases (like MongoDB and CouchDB) you may need to use :truncation instead.
begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

