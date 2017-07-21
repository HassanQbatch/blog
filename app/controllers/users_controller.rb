class UsersController < ApplicationController
	def create
		@user = User.new(name: params[:name], email: params[:email], password: params[:password], date: params[:date], color: params[:color])
		if @user.save
			redirect_to @user
		else
			render 'create'
		end
	end
end
