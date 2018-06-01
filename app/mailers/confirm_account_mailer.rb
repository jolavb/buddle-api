class ConfirmAccountMailer < ApplicationMailer

# This is a test mailer to make sure email is setup correctly
# Use the following to call this method from a controller: ConfirmAccountMailer.welcome_email(User.first).deliver
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome!')
  end

end
