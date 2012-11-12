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

require 'test_helper'

class QuizDefinitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
