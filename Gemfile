source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'sqlite3' #limit sqlite to development/test environments only so it doesn't interfere with Heroku
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem "web_git", git: "https://github.com/firstdraft/web_git"
end

group :development do
  gem 'annotate'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'firstdraft_generators', github: 'firstdraft/firstdraft_generators'
  gem 'letter_opener'
  gem 'meta_request'
  gem 'wdm', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'dotenv-rails'
end

group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'webmock'
end

group :production do
  gem 'pg' #removed version number from tutorial due to age 
end

gem 'devise', github: 'plataformatec/devise'


gem "starter_generators", :git => "https://github.com/raghubetina/starter_generators"
gem "httparty"

gem 'rails-jquery-autocomplete'
gem 'jquery-ui-rails'
gem 'ransack'
gem 'addressable'