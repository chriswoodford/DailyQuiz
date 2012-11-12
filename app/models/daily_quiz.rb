class DailyQuiz < ActiveRecord::Base
  belongs_to :quiz_definition
  has_many :quizzes
  attr_accessible :date
end
