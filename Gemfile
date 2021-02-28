source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'bcrypt', '3.1.11'
gem 'bcrypt_pbkdf'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails'
gem 'ed25519'
gem 'fog-aws'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick'
gem 'mini_racer', platforms: :ruby
gem 'non-stupid-digest-assets'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'unicorn'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capistrano', '3.6.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'faker'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'letter_opener_web'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'

end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
