# == Schema Information
#
# Table name: cultures
#
#  id                :bigint           not null, primary key
#  name              :string
#  type              :integer
#  form              :integer
#  producer          :string
#  product_id        :string
#  attenuation_min   :integer
#  attenuation_max   :integer
#  alcohol_tolerance :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Culture < ApplicationRecord
  enum type: [:ale, :bacteria, :brett, :champagne, :kviek, :lacto, :lager,
    :malolactic, :mixed_culture, :other, :pedio, :spontaneous, :wine]
  enum form: [:liquid, :dry, :slant, :culture, :dregs]
  
  has_many :culture_additions
  has_many :recipes, through: :culture_additions

  #disable inheritance column
  self.inheritance_column = :_type_disabled
end
