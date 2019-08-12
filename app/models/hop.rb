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
  has_many :hop_additions
  has_many :recipes, through: :hop_additions
end
