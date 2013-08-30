class WelcomeController < ApplicationController
  def index
  end

  def users

  end

  def teachers
    @users= User.all

  end
end