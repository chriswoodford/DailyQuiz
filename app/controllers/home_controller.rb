class HomeController < ApplicationController
  
  def index
    @daily_quiz = current_quiz
    raise "Oops! No quiz for today" if (@daily_quiz.nil?)
  end
  
end
