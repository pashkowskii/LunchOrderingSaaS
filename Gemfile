# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
require 'resque/server'
ruby '2.6.3'

gem 'bullet'
gem 'client_side_validations'
gem 'devise'
gem 'draper'
gem 'fast_jsonapi'
gem 'haml-rails', '~> 2.0'
gem 'jbuilder', '~> 2.7'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'puma', '~> 3.11'
gem 'pundit'
gem 'rails', '~> 6.0.0'
gem 'resque', '~> 1.25', '>= 1.25.2'
gem 'sass-rails', '~> 5'
gem 'semantic-ui-rails'
gem 'semantic-ui-sass', '~> 2.2', '>= 2.2.1.1'
gem 'simple_form'
gem 'smart_init'
gem 'sqlite3', '~> 1.4'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'factory_bot_rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
