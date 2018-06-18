class StudentsController < ApplicationController
	before_action :authenticate_user!
	def index
		@students = Student.all.order(:last_name)
	end

	def create
		@student = Student.create(student_params)
        
        if @student.valid?
		    flash[:notice] = t('notice.new')
		     redirect_to students_path
		 else
		 	flash[:notice] = t('notice.failure')
		 	render :new
		 end
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
		student = Student.find(params[:id])
		student.update(student_params)
        #   Have to find a way to flash when updated with missing information
        flash[:notice] = t('notice.update')
		redirect_to students_path
	end

	def destroy
		Student.destroy(params[:id])
		redirect_to students_path
	end

	private	

	def student_params
		params.require(:student).permit(:first_name, :last_name, :age, :highest_completed_education)
		
	end
end
