class QuizController < ApplicationController

  def index

    if (!signed_in?)
      redirect_to login_path
      return
    end

    @quiz_definition = current_quiz.quiz_definition
    @quiz = current_quiz.quizzes.where(player_id: current_user).first
    
    if current_user.has_played_today?
      render 'show'      
    end
 
  end

  def create

    if (!signed_in?)
      redirect_to login_path
      return
    end

    @quiz_definition = current_quiz.quiz_definition

    @quiz = Quiz.new
    @quiz.player = current_user
    @quiz.daily_quiz = current_quiz
    
    params[:questions].each do |question_id, option_id|
    
      answer = Answer.new
      answer.quiz = @quiz
      answer.question_option = QuestionOption.find(option_id)
      answer.save
      
    end
    
    @quiz.save
    
    render 'show'
    
  end
  
end
