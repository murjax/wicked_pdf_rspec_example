source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.3'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary', '0.12.3'
gem 'simple_form'
gem 'pry-rails'

group :development do
  gem 'listen'
end

group :development, :test do
  gem 'bootsnap', require: false
end

group :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'pdf-reader'
end
