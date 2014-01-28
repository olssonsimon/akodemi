class UsersController < ApplicationController
	before_action :signed_in_user, only: [:show, :edit, :destroy]
	before_action :correct_user, only: [:show, :edit, :destroy]

	def index
		redirect_to root_url
	end

	def new
		@user = User.new
	end

	def show
		@user = !params[:id].nil? ? User.find(params[:id]) : current_user
	end

	def edit
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			flash[:success] = "Welcome to Akodemi!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "Din profil har tagits bort."
		redirect_to users_url
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :bio)
		end

		# Before filters

		def signed_in_user
			redirect_to signin_url, notice: "Du måste logga in för att besöka den sidan." unless signed_in?
		end

		def correct_user
			@user = User.find(params[:id])
			redirect_to root_url, notice: "Du har inte åtkomst till den här sidan." unless current_user?(@user)
		end
end
