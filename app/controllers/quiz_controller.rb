class QuizController < ApplicationController

  before_filter :signed_in_user
  
  def index

    @quiz_definition = current_quiz.quiz_definition
    @quiz = current_quiz.quizzes.where(player_id: current_user).first
    render 'show' if current_user.has_played_today?
 
  end

  def create

    @quiz_definition = current_quiz.quiz_definition

    params[:time_end] = Time.now.to_i if !params[:time_end] 

    @quiz = Quiz.new
    @quiz.player = current_user
    @quiz.daily_quiz = current_quiz
    @quiz.time = params[:time_end].to_i - params[:time_start].to_i
    
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
