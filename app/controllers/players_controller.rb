class PlayersController < ApplicationController

  def new
    
    @team = Team.find(params[:teamId])
    @player = Player.new
    
  end
  
  def create
    
    @team = Team.find(params[:team][:id])
    @player = @team.members.build(params[:player])
    
    if @player.save
      @team.team_members.create!(player_id: @player.id)
      sign_in @player
      redirect_to root_path
    else
      render 'new'
    end
    
  end

end
