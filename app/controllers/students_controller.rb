class StudentsController < ApplicationController
before_action :set_student, only: %i[show edit update destroy destroy_subject bulk_subject_delete ]
  # before_action :set_subject, only: %i[destroy_subject]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    
    @student.save
    redirect_to '/students'
  end 

  def show
    @subjects = @student.subjects
  end

  def destroy_subject
    @subject = @student.subjects.find(params[:subject_id])
    @subject.destroy
    redirect_to "/students/#{params[:id]}"
  end

  def bulk_subject_delete
    params[:subject_id].uniq.each {|x| @student.subjects.find(x).destroy if x.present? }
    redirect_to project_path(@student)
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

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    #params.permit!
    params.require(:student).permit(:name, :student_class, :roll_no, subjects_attributes: [:id, :subject_name, :marks, :_destroy])
  end


end
