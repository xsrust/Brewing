# == Schema Information
#
# Table name: fermentables
#
#  id          :bigint           not null, primary key
#  name        :string
#  type        :integer
#  grain_group :integer
#  potential   :float
#  color       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Fermentable < ApplicationRecord
  # Enums
  enum type: [:dry_extract, :extract, :grain, :sugar, :fruit, :juice, :honey,
    :other]
  enum grain_group: [ :base, :caramel, :flaked, :roasted, :specialty, :smoked,
    :adjunct ]


  # disable inheritance column
  self.inheritance_column = :_type_disabled
end
