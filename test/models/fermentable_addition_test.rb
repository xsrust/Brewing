# == Schema Information
#
# Table name: fermentable_additions
#
#  id               :bigint           not null, primary key
#  amount           :float
#  duration         :float
#  duration_unit    :integer
#  specific_gravity :float
#  step             :integer
#  time             :float
#  time_unit        :integer
#  use              :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  fermentable_id   :bigint
#  recipe_id        :bigint
#
# Indexes
#
#  index_fermentable_additions_on_fermentable_id  (fermentable_id)
#  index_fermentable_additions_on_recipe_id       (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (fermentable_id => fermentables.id)
#  fk_rails_...  (recipe_id => recipes.id)
#
require 'test_helper'

class FermentableAdditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
