# == Schema Information
#
# Table name: hop_additions
#
#  id            :bigint           not null, primary key
#  recipe_id     :bigint
#  hop_id        :bigint
#  amount        :float
#  time_unit     :integer
#  time          :float
#  duration_unit :integer
#  duration      :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class HopAdditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
