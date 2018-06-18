class CoursesController < ApplicationController
	before_action :authenticate_user!
	def index
		@courses = Course.all	
	end

	def create
		@course = Course.create(course_params)
		if @course.valid?
		    flash[:notice] = "Success! New Course Record Made."
		     redirect_to courses_path
		 else
		 	flash[:notice] = "Missing Information."
		 	render :new
		 end

	def new
		@course = Course.new
	end

	def edit
		@course = Course.find(params[:id])
	end 

	def show
		@course = Course.find(params[:id])
	end

	def update
		course = Course.find(params[:id])
		course.update(course_params)
		flash[:notice] = "Updated Successfully!"

		redirect_to courses_path
	end

	def destroy
		Course.destroy(params[:id])
		redirect_to courses_path
	end

	private	

	def course_params
		params.require(:course).permit(:name, :total_in_class_hours)
		
	end
end
end
