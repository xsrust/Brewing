class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.float :batch_size
      t.float :efficency
      t.string :style
      t.string :notes

      t.timestamps
    end
  end
end
