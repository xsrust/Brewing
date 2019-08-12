class Fermentable < ApplicationRecord
  has_many :fermentable_additions
  has_many :recipes, through: :fermentable_additions
end
