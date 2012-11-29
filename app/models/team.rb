class Team < ActiveRecord::Base
  has_many :team_members, foreign_key: "team_id", dependent: :destroy
  has_many :members, through: :team_members, source: :player
  attr_accessible :name
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
