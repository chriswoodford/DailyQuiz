# == Schema Information
#
# Table name: question_options
#
#  id          :integer          not null, primary key
#  answer      :text
#  is_correct  :boolean
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class QuestionOption < ActiveRecord::Base
  
  belongs_to :question
  attr_accessible :answer, :is_correct
  
  def is_correct?
    return self.is_correct
  end
  
end
