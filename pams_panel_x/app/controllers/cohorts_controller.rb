class CohortsController < ApplicationController
    before_action :authenticate_user!
	def index
		@cohorts = Cohort.all	
	end

	def create
		Cohort.create(cohort_params)
		@instructors = Instructor.all
		@courses = Course.all

		redirect_to  cohorts_path
	end

	def new
		@cohort = Cohort.new
		@instructors = Instructor.all
		@courses = Course.all
	end

	def edit
		@cohort = Cohort.find(params[:id])
		@instructors = Instructor.all
		@courses = Course.all
	end 

	def show
		@cohort = Cohort.find(params[:id])
	end

	def update
		cohort = Cohort.find(params[:id])
		cohort.update(cohort_params)

		@instructors = Instructor.all
		@courses = Course.all

		redirect_to cohorts_path
	end

	def destroy
		Cohort.destroy(params[:id])
		redirect_to cohorts_path
	end

	private	

	def cohort_params
		params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :instructor_id)
		
	end
end
