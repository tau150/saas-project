# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.setup_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :platin,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORDS'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}