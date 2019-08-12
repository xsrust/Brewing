class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :type
      t.string :author
      t.string :coauthor
      t.float :batch_size
      t.float :efficency
      t.string :style
      t.string :notes
      t.float :original_gravity
      t.float :final_gravity
      t.float :alcohol_by_volume
      t.integer :ibu_estimate
      t.integer :color_estimate
      t.float :carbonation

      t.timestamps
    end
  end
end
