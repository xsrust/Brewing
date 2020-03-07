# == Schema Information
#
# Table name: recipes
#
#  id         :bigint           not null, primary key
#  batch_size :float
#  efficency  :float
#  name       :string
#  notes      :string
#  style      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Recipe < ApplicationRecord
  # Relations
  has_many :fermentable_additions
  has_many :fermentables, through: :fermentable_additions
end
