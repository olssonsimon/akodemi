class UsersController < ApplicationController

	def index
		redirect_to root_url
	end

	def new
		@user = User.new
	end

	def show
		@user = !params[:id].nil? ? User.find(params[:id]) : current_user
	end

	def create
		@user = User.new(user_params)
		if @user.save
			# Handle signup success
			sign_in @user
			flash[:success] = "Welcome to Akodemi!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User deleted"
		redirect_to users_url
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :bio)
		end
end
