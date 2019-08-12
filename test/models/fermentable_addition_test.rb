# == Schema Information
#
# Table name: fermentable_additions
#
#  id               :bigint           not null, primary key
#  recipe_id        :bigint
#  fermentable_id   :bigint
#  amount           :float
#  time_unit        :integer
#  time             :float
#  duration_unit    :integer
#  duration         :float
#  specific_gravity :integer
#  step             :integer
#  use              :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class FermentableAdditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
