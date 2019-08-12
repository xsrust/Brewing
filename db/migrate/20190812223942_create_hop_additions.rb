class CreateHopAdditions < ActiveRecord::Migration[5.2]
  def change
    create_table :hop_additions do |t|
      t.references :recipe, foreign_key: true
      t.references :hop, foreign_key: true
      t.float :amount
      t.integer :time_unit
      t.float :time
      t.integer :duration_unit
      t.float :duration

      t.timestamps
    end
  end
end
