class HomeController < ApplicationController

  def index
    @daily_quiz = current_quiz
    @teams = Team.all
  end

end
