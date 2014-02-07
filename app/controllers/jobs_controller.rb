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
		@job = Job.new(job_params)
		if @job.save
			# successfully created job
			flash[:success] = "Jobbet: #{@job.title}, har skapats!"
			redirect_to jobs_path
		else
			# error creating job
			render 'new'
		end
	end

	def edit
	end

	def destroy
	end

	private

		def job_params
			params.require(:job).permit(:title, :description, :city, :last_day, :type)
		end

end
