class Hq::DashboardController < Hq::BaseController
  def index

  end

  def teachers
    @teachers = Teacher.all
  end

  def users
    @users = User.all
  end

  def profile

  end
end