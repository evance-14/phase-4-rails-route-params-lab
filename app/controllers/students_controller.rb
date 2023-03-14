class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students
    if params[:name]
      students = Student.filter_by_name(params[:name])
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
