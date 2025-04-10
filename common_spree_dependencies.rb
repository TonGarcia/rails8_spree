source 'https://rubygems.org'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
gem 'rails', '< 9.0', require: false

platforms :jruby do
  gem 'jruby-openssl'
end

platforms :ruby do
  gem 'mysql2' if ENV['DB'] == 'mysql' || ENV['CI']
  gem 'pg' if ENV['DB'] == 'postgres' || ENV['CI']

  gem 'sqlite3', '>= 2.0'

  gem 'doorkeeper', '~> 5.8', '>= 5.8.2'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'capybara-select-2'
  gem 'database_cleaner-active_record'
  gem 'email_spec'
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'multi_json'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-retry'
  gem 'rspec_junit_formatter'
  gem 'rswag-specs'
  gem 'jsonapi-rspec'
  gem 'simplecov'
  gem 'stackprof'
  gem 'webmock'
  gem 'timecop'
  gem 'test-prof'
  gem 'rails-controller-testing'
end

group :test, :development do
  gem 'awesome_print'
  gem 'brakeman'
  gem 'gem-release'
  gem 'i18n-tasks'
  gem 'rubocop', '~> 1.0', require: false
  gem 'rubocop-rspec', require: false
  gem 'pry-byebug'
  gem 'puma'
  gem 'ffaker'
  gem 'rspec-rails'
end

group :development do
  gem 'importmap-rails'
  # gem 'github_fast_changelog'
  gem 'solargraph'
  gem 'ruby-lsp'
  gem 'ruby-lsp-rails'
end

# replaces sprockets with propshaft
gem 'propshaft'

#remove sidekiq and redis
#gem 'sidekiq'
#gem 'redis'

#add solid_queue
gem 'solid_queue'
