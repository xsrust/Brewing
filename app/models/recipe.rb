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
  has_many :fermentable_additions
  has_many :fermentables, through: :fermentable_additions
  has_many :culture_additions
  has_many :cultures, through: :culture_additions
  has_many :hop_additions
  has_many :hops, through: :hop_additions
end
