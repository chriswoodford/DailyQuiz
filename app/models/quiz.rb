class Quiz < ActiveRecord::Base
  belongs_to :player
  belongs_to :quiz_definition
  has_many :answers
end
