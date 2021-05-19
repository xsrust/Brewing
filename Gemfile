source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Looking to use the Edge version? gem 'rails', github: 'rails/rails'
# Full-stack web application framework. (http://rubyonrails.org)
gem 'rails', '~> 5.2.0'

# Use Puma as the app server
# Puma is a simple, fast, threaded, and highly concurrent HTTP 1.1 server for Ruby/Rack applications (http://puma.io)
gem 'puma', '~> 4.3'

# Use Rack Timeout. Read more: https://github.com/heroku/rack-timeout
# Abort requests that are taking too long (http://github.com/heroku/rack-timeout)
gem 'rack-timeout', '~> 0.5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# Create JSON structures via a Builder-style DSL (https://github.com/rails/jbuilder)
gem 'jbuilder', '~> 2.5'

# Use PostgreSQL as the database for Active Record
# Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/] (https://bitbucket.org/ged/ruby-pg)
gem 'pg', '~> 1.0'

# Use Redis Rails to set up a Redis backed Cache and / or Session
# A Ruby client library for Redis (https://github.com/redis/redis-rb)
gem 'redis', '~> 4.0'

# Use Sidekiq as a background job processor through Active Job
# Simple, efficient background processing for Ruby (http://sidekiq.org)
gem 'sidekiq', '~> 5.1'

# Use Clockwork for recurring background tasks without needing cron
# gem 'clockwork', '~> 2.0'

# Use Kaminari for pagination
# gem 'kaminari', '~> 1.0'

# Use SCSS for stylesheets
# Sass adapter for the Rails asset pipeline. (https://github.com/rails/sass-rails)
gem 'sass-rails', '~> 5.0'

# Use Uglifier as the compressor for JavaScript assets
# Ruby wrapper for UglifyJS JavaScript compressor (http://github.com/lautis/uglifier)
gem 'uglifier', '>= 1.3.0'

# Use jQuery as the JavaScript library
# Use jQuery with Rails 4+ (https://github.com/rails/jquery-rails)
gem 'jquery-rails', '~> 4.3'

# Use Turbolinks. Read more: https://github.com/turbolinks/turbolinks
# Turbolinks makes navigating your web application faster (https://github.com/turbolinks/turbolinks)
gem 'turbolinks', '~> 5'

# Use Bootstrap SASS for Bootstrap support
# bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications. (https://github.com/twbs/bootstrap-sass)
gem 'bootstrap-sass', '~> 3.3'

# This gem adds the bulma.io assets to your asset pipeline so you can import them in your Rails project. (https://github.com/joshuajansen/bulma-rails)
gem 'bulma-rails', '~> 0.7.5'

# Use Font Awesome Rails for Font Awesome icons
# an asset gemification of the font-awesome icon font library (https://github.com/bokmann/font-awesome-rails)
gem 'font-awesome-rails', '~> 4.7'

# Use Bootsnap to improve startup times
# gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in your code to drop into a debugger console
  # Ruby fast debugger - base + CLI (https://github.com/deivid-rodriguez/byebug)
  gem 'byebug', platform: :mri
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15', '< 4.0'
  # gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
end

group :development do
  # Enable a debug toolbar to help profile your application
  # Profiles loading speed for rack applications. (http://miniprofiler.com)
  gem 'rack-mini-profiler', '~> 1.0'

  # Access an IRB console on exception pages or by using <%= console %>
  # A debugging tool for your Ruby on Rails applications. (https://github.com/rails/web-console)
  gem 'web-console', '~> 3.3.0'

  # Get notified of file changes. Read more: https://github.com/guard/listen
  # Listen to file modifications (https://github.com/guard/listen)
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Use Spring. Read more: https://github.com/rails/spring
  # Rails application preloader (https://github.com/rails/spring)
  gem 'spring'
  # Makes spring watch files using the listen gem. (https://github.com/jonleighton/spring-watcher-listen)
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Automatic Ruby code style checking tool. (https://github.com/rubocop-hq/rubocop)
  gem 'rubocop'

  # Annotates Rails Models, routes, fixtures, and others based on the database schema. (http://github.com/ctran/annotate_models)
  gem 'annotate'

  # Add comments to your Gemfile with each dependency's description. (https://github.com/ivantsepp/annotate_gem)
  gem 'annotate_gem'

  # help to kill N+1 queries and unused eager loading. (https://github.com/flyerhzm/bullet)
  gem 'bullet'

  # Better error page for Rails and other Rack apps (https://github.com/BetterErrors/better_errors)
  gem 'better_errors'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# Timezone Data for TZInfo (http://tzinfo.github.io)
gem 'tzinfo-data'
