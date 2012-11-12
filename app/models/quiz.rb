class Quiz < ActiveRecord::Base
  belongs_to :player
  belongs_to :quiz_definition
  has_many :answers
  
  def correct_answers()
    answers = [];
    self.answers.each do |answer|
      if answer.is_correct?
        answers << answer
      end
    end
    return answers
  end
  
end
