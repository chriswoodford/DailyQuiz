class HomeController < ApplicationController
  
  def index
    @quiz = QuizDefinition.all.first
  end
  
end
