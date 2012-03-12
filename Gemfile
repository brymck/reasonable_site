source 'https://rubygems.org'

gem 'rails', '3.2.2'

gem 'dalli'
gem 'haml'
gem 'jquery-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :production, :development do
  gem 'thin'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :test do
  gem 'autotest'
  gem 'rspec'
  gem 'spork'
  gem 'test_notifier'
  gem 'webrat'
end
