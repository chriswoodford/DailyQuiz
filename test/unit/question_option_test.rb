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

require 'test_helper'

class QuestionOptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
