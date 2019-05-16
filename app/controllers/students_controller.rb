class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    if @student.active
      @activated = "active"
    else
      @activated = "inactive"
    end
  end

  def activate
    @student.activate
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
