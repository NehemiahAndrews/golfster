class CoursesController < ApplicationController

  def index
    @courses = Course.all.paginate(page: params[:page], per_page: 5)
  end

  def new
    @course = Course.new
  end
  
end
