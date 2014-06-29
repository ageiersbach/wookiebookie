1. Add 'rspec-rails' to Gemfile:

		group :development, :test do
			gem 'rspec-rails'
		end

2. Run 'bundle install'

3. Run 'rails generate rspec:install'

4. Update spec/spec_helper.rb

5. Run 'bundle exec rspec'
