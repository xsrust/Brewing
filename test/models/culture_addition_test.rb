# == Schema Information
#
# Table name: culture_additions
#
#  id                  :bigint           not null, primary key
#  recipe_id           :bigint
#  culture_id          :bigint
#  amount              :float
#  time_unit           :integer
#  time                :float
#  duration_unit       :integer
#  duration            :float
#  attenuation         :float
#  cell_count_billions :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class CultureAdditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
