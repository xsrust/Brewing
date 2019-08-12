class CreateFermentables < ActiveRecord::Migration[5.2]
  def change
    create_table :fermentables do |t|
      t.string :name
      t.integer :type
      t.string :producer
      t.integer :grain_group
      t.float :potential
      t.float :color

      t.timestamps
    end
  end
end
