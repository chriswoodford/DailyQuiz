class QuizController < ApplicationController

  def index
    
    @quiz = QuizDefinition.all.first
        
  end

end
