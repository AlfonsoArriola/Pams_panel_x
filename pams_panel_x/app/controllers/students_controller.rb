class StudentsController < ApplicationController
	def index
		@students = Student.all	
	end

	def create
		Student.create(student_params)

		redirect_to students_path
	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def show
		@student = Student.find(params[:id])
	end

	def update
		student = Student.find(params[Id])
		student.update(student_params)

		redirect_to students_path
	end

	private	

	def student_params
		params.require(:student).permit(:first_name, :last_name, :age, :highest_education_completed)
		
	end
end
