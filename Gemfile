source 'https://rubygems.org'
ruby "2.2.3"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'masonry-rails'
gem 'acts_as_votable', '~> 0.10.0'
# Use paperclip for profile_image
gem 'paperclip', '~> 4.3.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use HAML for html ::precompiler
gem 'haml', '~> 4.0.7'
# Use simple_form ~> 3.2.0
gem 'simple_form', '~> 3.2.0'
# Use device Gem
gem 'devise', '~> 3.5.2'
# Use commontator gem
gem 'commontator', '~> 4.10.0'

gem 'omniauth-facebook'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Use postgress as the database for production
group :production do
    gem 'pg'
    gem 'rails_12factor'
    gem 'puma'
end
