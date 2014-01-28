class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end

	def show
	end

	def new
		@job = Job.new
	end

	def create
	end

	def edit
	end

	def destroy
	end

end
