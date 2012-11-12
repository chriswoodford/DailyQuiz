class HomeController < ApplicationController
  
  def index
    @daily_quiz = current_quiz
  end
  
end
