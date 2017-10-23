source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'

group :development, :test do
  gem 'database_cleaner', '1.6.1'
  gem 'factory_girl_rails', '4.8.0'
  gem 'faker', '1.8.4'
  gem 'rails-controller-testing', '1.0.2'
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-callback-matchers', '1.1.4'
  gem 'shoulda-matchers', '3.1.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %w[mingw mswin x64_mingw jruby]
