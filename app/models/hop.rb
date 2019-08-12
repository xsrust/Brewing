class Hop < ApplicationRecord
  has_many :hop_additions
  has_many :recipes, through: :hop_additions
end
