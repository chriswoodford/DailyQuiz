# == Schema Information
#
# Table name: questions
#
#  id                 :integer          not null, primary key
#  question           :text
#  quiz_definition_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
