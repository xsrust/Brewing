class CreateCultureAdditions < ActiveRecord::Migration[5.2]
  def change
    create_table :culture_additions do |t|
      t.references :recipe, foreign_key: true
      t.references :culture, foreign_key: true
      t.float :amount
      t.integer :time_unit
      t.float :time
      t.integer :duration_unit
      t.float :duration
      t.float :attenuation
      t.integer :cell_count_billions

      t.timestamps
    end
  end
end
