source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.6'

gem 'mongoid', '~> 6.0'
gem 'bson_ext'

gem 'rails', '~> 5.2.3'

gem 'puma', '~> 3.11'

gem 'jbuilder', '~> 2.5'

gem 'redis', '~> 4.0'
gem 'sidekiq'

gem 'figaro'

gem 'rest-client'

gem 'tzinfo-data'

# gem 'capistrano-rails', group: :development

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'sinatra'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'webmock'
  gem 'guard-rspec'
  gem 'rails-controller-testing'
  gem 'mongoid-rspec'
  gem 'database_cleaner'
end

# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
