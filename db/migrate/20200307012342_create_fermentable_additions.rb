class CreateFermentableAdditions < ActiveRecord::Migration[5.2]
  def change
    create_table :fermentable_additions do |t|
      t.references :recipe, foreign_key: true
      t.references :fermentable, foreign_key: true
      t.float :amount
      t.integer :time_unit
      t.float :time
      t.integer :duration_unit
      t.float :duration
      t.integer :step
      t.integer :use
      t.float :specific_gravity

      t.timestamps
    end
  end
end
