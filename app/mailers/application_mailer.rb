# frozen_string_literal: true

# This class serves as the base for all mailers in the application.
# It inherits from ActionMailer::Base, and global email settings can be defined here.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
