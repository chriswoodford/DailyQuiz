# == Schema Information
#
# Table name: quiz_definitions
#
#  id          :integer          not null, primary key
#  difficulty  :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class QuizDefinition < ActiveRecord::Base
  belongs_to :category
  has_many :questions
  attr_accessible :difficulty 
end
