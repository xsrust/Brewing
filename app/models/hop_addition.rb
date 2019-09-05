# == Schema Information
#
# Table name: hop_additions
#
#  id            :bigint           not null, primary key
#  recipe_id     :bigint
#  hop_id        :bigint
#  amount        :float
#  time_unit     :integer
#  time          :float
#  duration_unit :integer
#  duration      :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class HopAddition < ApplicationRecord
  enum time_unit: [:day, :hour, :minute], _prefix: :time
  enum duration_unit: [:day, :hour, :minute], _prefix: :duration
  enum use: [:mash, :boil, :whirlpool, :fermentation]

  belongs_to :recipe
  belongs_to :hop
end
