# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  has_many :quizes
  
  attr_accessible :username, :name, :password, :password_confirmation
   
  validates :username, presence: true, format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true
  
  has_secure_password
  
  before_save { |player| player.username = username.downcase }
  before_save :create_remember_token
  
  private
  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
