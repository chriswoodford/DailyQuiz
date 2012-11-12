class QuizController < ApplicationController

  def index
    
    @quiz = current_quiz
        
  end

  def create

    @quiz = Quiz.new
    @quiz.player = current_user
    @quiz.quiz_definition = current_quiz
    
    params[:questions].each do |question_id, option_id|
    
      answer = Answer.new
      answer.quiz = @quiz
      answer.question_option = QuestionOption.find(option_id)
      
    end
    
  end

end
