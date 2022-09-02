  class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy toggel_status]
  # before_action :set_subject, only: %i[destroy_subject]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    
    @student.save!
    redirect_to '/students'
  end 

  def show
    @subject = @student.subjects
  end

  def destroy_subject
    @subject = @student.subjects.find(params[:subject_id])
    @subject.destroy
    redirect_to "/students/#{params[:id]}"
  end

  def bulk_subject_delete
    params[:subject_id].uniq.each {|x| Subject.find(x).destroy if x.present? }
    redirect_to '/student'
  end

  def edit
  end

  def update
    if   @student.update(student_params)
      redirect_to '/students'
    else 
      render :edit
    end
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

  # def set_subject
  #   @subject = @student.subjects.find(params[:subject_id])
  # end

  def student_params
  	#params.permit!
    params.require(:student).permit(:name, :student_class, :roll_no, subjects_attributes: [:id, :subject_name, :marks, :_destroy])
  end


end
