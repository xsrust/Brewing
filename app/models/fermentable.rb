class Fermentable < ApplicationRecord
  # Enums
  enum type: [:dry_extract, :extract, :grain, :sugar, :fruit, :juice, :honey,
    :other]
  enum grain_group: [ :base, :caramel, :flaked, :roasted, :specialty, :smoked,
    :adjunct ]


  # disable inheritance column
  self.inheritance_column = :_type_disabled
end
