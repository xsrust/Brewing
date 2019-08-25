# == Schema Information
#
# Table name: recipes
#
#  id                :bigint           not null, primary key
#  name              :string
#  type              :integer
#  author            :string
#  coauthor          :string
#  batch_size        :float
#  efficency         :float
#  style             :string
#  notes             :string
#  original_gravity  :float
#  final_gravity     :float
#  alcohol_by_volume :float
#  ibu_estimate      :integer
#  color_estimate    :integer
#  carbonation       :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Recipe < ApplicationRecord
  enum type: [:extract, :partial_mash, :all_grain]

  has_many :fermentable_additions
  has_many :fermentables, through: :fermentable_additions
  has_many :culture_additions
  has_many :cultures, through: :culture_additions
  has_many :hop_additions
  has_many :hops, through: :hop_additions

  accepts_nested_attributes_for :hop_additions
  accepts_nested_attributes_for :fermentable_additions, allow_destroy: true
  accepts_nested_attributes_for :culture_additions

  #disable inheritance column
  self.inheritance_column = :_type_disabled
end
