# == Schema Information
#
# Table name: hops
#
#  id         :bigint           not null, primary key
#  name       :string
#  producer   :string
#  origin     :string
#  year       :integer
#  form       :integer
#  alpha_acid :float
#  beta_acid  :float
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hop < ApplicationRecord
  enum type: [:aroma, :bittering, :flavor, :aroma_bittering, :bittering_flavor,
    :aroma_flavor, :aroma_bittering_flavor]
  enum form: [:extract, :leaf, :leaf_wet, :pellet, :powder, :plug]

  has_many :hop_additions
  has_many :recipes, through: :hop_additions

  #disable inheritance column
  self.inheritance_column = :_type_disabled
end
