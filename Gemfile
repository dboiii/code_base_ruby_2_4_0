source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',          '~> 5.1.2'
gem 'pg',             '~> 0.18'
gem 'puma',           '~> 3.7'
gem 'sass-rails',     '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'uglifier',       '>= 1.3.0'
gem 'coffee-rails',   '~> 4.2'
gem 'jbuilder',       '~> 2.5'
gem 'jquery-rails',   '~> 4.3.1'
gem 'sprockets',      '~> 3.7.1'

gem "font-awesome-rails", '~> 4.7.0.2'
gem 'simple_form',        '~> 3.5.0'
gem 'slim-rails',         '~> 3.1.1'
gem 'kaminari',           :git => "git://github.com/amatsuda/kaminari.git", :branch => 'master'
gem 'dotenv-rails',       '~> 2.2.1'
gem "select2-rails",      '~> 4.0.3'
gem 'devise',             '~> 4.3.0'

gem 'jquery-datatables-rails',  '~> 3.4.0'
gem 'ajax-datatables-rails',    '~> 0.4.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console',  '>= 3.3.0'
  gem 'listen',       '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
