class InstructorsController < ApplicationController
	def index
		@instructors = Instructor.all
	end


	def create
		Instructor.create(instructor_params)
		# *maybe add a flash/toaster message
		redirect_to  instructors_path
	end

	def new
		@instructor = Instructor.new	
	end

	def edit
		@instructor = Instructor.find(params[:id])
	end

	def show
		@instructor = Instructor.find(params[:id])
	end

	def update
		instructor = Instructor.find(params[:id])
		instructor.update(instructor_params)
		
		redirect_to instructors_path
	end

	def destroy
		# find a way to hide instead of destroy teacher data.
		Instructor.destroy(params[:id])
		redirect_to instructors_path
	end
end
