# == Schema Information
#
# Table name: quizzes
#
#  id            :integer          not null, primary key
#  player_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  daily_quiz_id :integer
#  time          :time
#

class Quiz < ActiveRecord::Base
  
  belongs_to :player
  belongs_to :daily_quiz
  has_many :answers, dependent: :destroy
  
  def correct_answers
    answers = []
    self.answers.each do |answer|
      if answer.is_correct?
        answers << answer
      end
    end
    return answers
  end
  
  def score
    return (self.correct_answers.count * 100) - self.time.to_i
  end
  
end
