class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy toggel_status]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to '/students/new'
  end

  def show
  end

  def edit
  end

  def update
    @student = Student.new(student_params)
    redirect_to '/students'
  end

  def destroy
    @student.destroy
    redirect_to '/students'
  end 

  def bulk_delete
  	params[:student_id].uniq.each {|x| Student.find(x).destroy if x.present?}
    redirect_to '/students'
  end

  def toggel_status
    if @student.draft?
      @student.published!
    else
    @student.draft!
    end 
    redirect_to students_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
  	#params.permit!
    params.permit(:name, :student_class, :roll_no)
  end


end
