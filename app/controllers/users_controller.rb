class UsersController < ApplicationController
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render 'create'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name,:email,:password,:date,:color)
	end

end
