# frozen_string_literal: true

source 'https://rubygems.org'

ruby '~> 2.6'

# git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Some annoying issues at the moment: rmagick 4.0] has issues with Imagemagick v 7.0 :-(
# gem 'rmagick'

gem 'rhex'

group :development, :test do
  gem 'minitest', '~> 5.11', '>= 5.11.3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug', '~> 3.7'
end

group :development do
  # nice gems for irb, remember to require it into irb or add to .irbrc
  gem 'interactive_editor'
  gem 'map_by_method'
  gem 'pry'
end
