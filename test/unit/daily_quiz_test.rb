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

require 'test_helper'

class DailyQuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
