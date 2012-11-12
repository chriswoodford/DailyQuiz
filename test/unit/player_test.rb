# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  password   :string(255)
#  salt       :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
