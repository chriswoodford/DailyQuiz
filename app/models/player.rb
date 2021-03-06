# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#

class Player < ActiveRecord::Base
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  has_many :quizzes, dependent: :destroy
  has_many :team_members, foreign_key: "player_id", dependent: :destroy
  has_many :teams, through: :team_members, source: :team
  
  attr_accessible :username, :name, :password, :password_confirmation
   
  validates :username, presence: true, format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true
  
  has_secure_password
  
  before_save { |player| player.username = username.downcase }
  before_save :create_remember_token
  
  def has_played_today?
    self.quizzes.joins(:daily_quiz).where('daily_quizzes.date' => Date.today).first
  end
  
  def points
    
    
    
  end
  
  private
  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
