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
class FermentableAddition < ApplicationRecord
  include Constants

  enum time_unit: time_units, _prefix: :time
  enum duration_unit: time_units, _prefix: :duration
  enum use: [:mash, :boil, :fermentation, :packaging]

  before_save :calculate_sg

  # Relations
  belongs_to :recipe
  belongs_to :fermentable

  private
    def calculate_sg
      pp "callback"
      self.specific_gravity = ( amount * fermentable.potential * recipe.efficency * 96 ) / recipe.batch_size
    end
end
