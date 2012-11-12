class DailyQuiz < ActiveRecord::Base
  belongs_to :quiz_definition
  attr_accessible :date
end
