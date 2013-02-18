class HomeController < ApplicationController

  def index

    if signed_in?
      redirect_to player_path current_user
      return
    end

    @daily_quiz = current_quiz
    @teams = Team.all
    render 'home'

  end

  def home
    @daily_quiz = current_quiz
    @teams = Team.all
  end

end
