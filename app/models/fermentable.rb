# == Schema Information
#
# Table name: fermentables
#
#  id          :bigint           not null, primary key
#  name        :string
#  type        :integer
#  producer    :string
#  grain_group :integer
#  potential   :float
#  color       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Fermentable < ApplicationRecord
  has_many :fermentable_additions
  has_many :recipes, through: :fermentable_additions

  #disable inheritance column
  self.inheritance_column = :_type_disabled
end
