# == Schema Information
#
# Table name: daily_quizzes
#
#  id                 :integer          not null, primary key
#  date               :date
#  quiz_definition_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class DailyQuiz < ActiveRecord::Base
  belongs_to :quiz_definition
  has_many :quizzes
  attr_accessible :date, :quiz_definition
end
