class Culture < ApplicationRecord
  has_many :culture_additions
  has_many :recipes, through: :culture_additions
end
