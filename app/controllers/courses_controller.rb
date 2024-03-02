class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_actions
  
  def index
    @courses = Course.all
  end

  def set_actions
    if current_user.admin?
      @actions = [:new, :edit, :destroy, :show, :index, :assign_instructor, :show_customers]
    elsif current_user.instructor?
      @actions = [:show, :index, :show_customers]
    else
      @actions = [:show, :index, :buy_course]
    end
  end
end
