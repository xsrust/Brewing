class Recipe < ApplicationRecord
  has_many :fermentable_additions
  has_many :fermentables, through: :fermentable_additions
  has_many :culture_additions
  has_many :cultures, through: :culture_additions
  has_many :hop_additions
  has_many :hops, through: :hop_additions
end
