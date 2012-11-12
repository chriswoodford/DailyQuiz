class HomeController < ApplicationController
  
  def index
    @quiz = QuizDefinition.first
  end
  
end
