source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "https://github.com/"
end
ruby '2.3.1'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0.alpha3.1'
gem 'high_voltage'
gem 'pg'
group :development do
  gem 'better_errors'
  gem 'hub', :require=>nil
  gem 'rails_layout'
end

=begin
unicorn is an HTTP server for Rack applications designed to only
serve fast clients on low-latency, high-bandwidth connections
and take advantage of features in Unix/Unix-like kernels.
Slow clients should only be served by placing a reverse
proxy capable of fully buffering both the the request
and response in between unicorn and slow clients.
=end
group :production do
  gem 'unicorn'
end
