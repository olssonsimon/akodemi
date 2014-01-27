class UsersController < ApplicationController

	def index
		redirect_to root_url
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save
			# Handle signup success
			#Sign in the user
			flash[:success] = "Welcome to Akodemi!"
			redirect_to @user
		else
			render 'new'
		end
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :bio)
		end
end
