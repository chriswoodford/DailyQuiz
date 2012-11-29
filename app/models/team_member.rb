# == Schema Information
#
# Table name: team_members
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  player_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamMember < ActiveRecord::Base
  attr_accessible :player_id
  belongs_to :player
  belongs_to :team
  validates :player_id, presence: true
  validates :team_id, presence: true
end
