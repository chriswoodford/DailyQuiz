# == Schema Information
#
# Table name: answers
#
#  id                 :integer          not null, primary key
#  question_option_id :integer
#  quiz_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Answer < ActiveRecord::Base
  
  belongs_to :quiz
  belongs_to :question_option
  
  def is_correct?
    return self.question_option && self.question_option.is_correct?
  end
  
end
