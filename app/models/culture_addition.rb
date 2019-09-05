# == Schema Information
#
# Table name: culture_additions
#
#  id                  :bigint           not null, primary key
#  recipe_id           :bigint
#  culture_id          :bigint
#  amount              :float
#  time_unit           :integer
#  time                :float
#  duration_unit       :integer
#  duration            :float
#  attenuation         :float
#  cell_count_billions :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class CultureAddition < ApplicationRecord
  enum time_unit: [:day, :hour, :minute], _prefix: :time
  enum duration_unit: [:day, :hour, :minute], _prefix: :duration
  
  belongs_to :recipe
  belongs_to :culture
end
