source 'https://rubygems.org'

# Ruby version
ruby '2.3.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use Twitter bootstrap css framework
gem 'bootstrap-sass', '~> 3.3'
# Progress bar wrapper
gem 'bootstrap_progressbar', '~> 0.2.0'
# Authentication system with Devise
gem 'devise', '~> 3.5'
# Omniauth allows multiple provider for quick login
gem 'omniauth', '~> 1.3'
# Auth with Twitter
gem 'omniauth-twitter', '~> 1.2'
# Auth with Google
gem 'omniauth-google-oauth2', '~> 0.4.0'
# Auth with Facebook
gem 'omniauth-facebook', '~> 3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# For http request to HubSpot API
gem 'httparty', '~> 0.13.7'
# Wrapper for HubSpot API
gem 'hubspot-ruby', '~> 0.1.8'
# Used to generate PDF to HTML
gem 'wicked_pdf', '~> 1.0'
# Used by wicked_pdf
gem 'wkhtmltopdf-binary', '~> 0.9.9.3'
# Used to validate phone numbers
gem 'phony_rails', '~> 0.13.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # RSpec Testing framework
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  # Postgres Database engine used by default on Heroku
  gem 'pg'
  # Required by Heroku for Rails app
  gem 'rails_12factor'
  # Production web server used by Heroku
  gem 'puma'
  # Gzip compression to reduce their transfer size. Speeds up the app!
  gem 'heroku-deflater'
end

