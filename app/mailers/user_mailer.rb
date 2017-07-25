class UserMailer < ApplicationMailer
	default from: "hassan.tariq@qbatch.com"

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome Email')
	end	
end
