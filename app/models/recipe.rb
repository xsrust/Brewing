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
end
