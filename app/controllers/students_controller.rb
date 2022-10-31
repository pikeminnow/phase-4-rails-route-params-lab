class StudentsController < ApplicationController

  def index
    students = if params[:name]
                 Student.by_name(params[:name])
              else    
                  Student.all
              end
    render json: students
  end

def students

  student = Student.find(params[:id])
  render json: student
end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
    student = Student.all.order(grade: :desc).first
    render json: student
  end

end
