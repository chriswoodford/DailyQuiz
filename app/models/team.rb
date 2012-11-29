# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  has_many :team_members, foreign_key: "team_id", dependent: :destroy
  has_many :members, through: :team_members, source: :player
  attr_accessible :name
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
