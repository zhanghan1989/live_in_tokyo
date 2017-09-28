source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
gem 'bootstrap-sass', '3.3.6'
gem 'bcrypt', '3.1.11'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
gem 'jquery-atwho-rails'
gem 'redcarpet'
gem 'will_paginate',           '3.1.0'
gem 'bootstrap-will_paginate', '0.0.10'

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
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # 封装 RSpec 的程序，还包含了一些专为 Rails 提供的功能；
  gem 'rspec-rails', '~> 3.5'
  # 把 Rails 生成测试数据默认使用的固件换成更好用的预构件
  gem 'factory_girl_rails', '~> 4.8'
end

group :test do
  # 为预构件生成名字、Email 地址以及其他的示例数据；
  gem "faker", "~> 1.7"
  # 便于模拟用户和程序的交互操作；
  gem "capybara", "~> 2.6"
  # 清理“测试数据库”，确保 RSpec 中的测试用例运行于一块净土之上；
  gem "database_cleaner", "~> 1.5"
  # 这个 gem 的功能只有一个，但做的很好，如果需要，它会打开系统的默认浏览器，显示应用程序当前渲染的页面。调试测试时特别有用；
  gem "launchy", "~> 2.4"
  # 结合 Capybara 测试基于 JavaScript 的交互操作。
  gem "selenium-webdriver", "~> 3.3.0"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

#本番 (production) 環境
group :production do
  gem 'pg', '0.18.4'
  gem 'rails_12factor', '0.0.2'
  gem 'puma', '3.4.0'
end
