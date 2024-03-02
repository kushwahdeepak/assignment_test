class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    if current_user.admin?
      redirect_to :admin_dashboard
    elsif current_user.instructor?
      redirect_to :instructor_dashboard
    else
      redirect_to :student_dashboard
    end
  end

  def admin_dashboard
  end

  def instructor_dashboard
  end

  def student_dashboard
  end
end
