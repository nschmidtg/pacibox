source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.3'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'font-awesome-rails'
#gem 'formtastic'
gem 'formtastic-bootstrap'
gem 'jbuilder', '~> 2.5'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'figaro'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'haml-rails'
gem 'high_voltage'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pg'
group :development do
  gem 'better_errors'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'rails_layout'
end
