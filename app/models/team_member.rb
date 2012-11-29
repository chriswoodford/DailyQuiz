class TeamMember < ActiveRecord::Base
  attr_accessible :player_id, :team_id
  belongs_to :player
  belongs_to :team
  validates :player_id, presence: true
  validates :team_id, presence: true
end
