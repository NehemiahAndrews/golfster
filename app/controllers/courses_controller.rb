class CoursesController < ApplicationController

  def index
    @courses = Course.all.paginate(page: params[:page], per_page: 5)
  end

  def new
    @course = Course.new
  end
  
  def create
    Course.create(course_params)
    redirect_to root_path
  end

  private

  def course_params
    params.require(:course).permit(:name,:address,:description)
  end
end
