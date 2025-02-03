source "https://rubygems.org"
gem "rails", "~> 8.0.1"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"


gem "devise", "~> 4.9"
gem "propshaft"
gem "importmap-rails"
gem "jbuilder"
gem "stimulus-rails"
gem "turbo-rails"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "kamal", require: false
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"
gem "tailwindcss-ruby", "~> 4.0"
gem "tailwindcss-rails", "~> 4.0"
gem "thruster", require: false
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "brakeman", require: false
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "dotenv-rails"
  gem "factory_bot_rails", "~> 6.4"
  gem "faker", "~> 3.5"
  gem "pry-rails"
  gem "rubocop-rails-omakase", require: false
  gem "rspec", "~> 3.13"
  gem "rspec-rails", "~> 7.1"
  gem "rubocop-performance", require: false
  gem "rubocop-rails", "~> 2.24", ">= 2.24.1"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "database_cleaner-active_record"
  gem "rails-controller-testing"
  gem "selenium-webdriver"
  gem "simplecov"
  gem "shoulda-matchers"
  gem "vcr"
  gem "webmock"
end

gem "breadcrumbs_on_rails", "~> 4.1"
