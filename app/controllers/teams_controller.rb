class TeamsController < ApplicationController
  
  def new
  
    @team = Team.new
  
  end
  
  def create
    
    @team = Team.new(params[:team])

    if @team.save
      flash[:success] = "Your team, #{@team.name}, has been created!"
      redirect_to signup_step2_path(teamId: @team.id)
    else
      render 'new'
    end
    
  end
  
  def show
    
    @team = Team.find(params[:id])
    
    @daily_quiz = current_quiz
    #raise "Oops! No quiz for today" if (@daily_quiz.nil?)
    
  end
  
end
