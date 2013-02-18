class HomeController < ApplicationController

  def index

    if not signed_in?
      @daily_quiz = current_quiz
      @teams = Team.all
      return render 'home'
    end

    @user = current_user

  end

  def home
  end

end
