class CreateCultures < ActiveRecord::Migration[5.2]
  def change
    create_table :cultures do |t|
      t.string :name
      t.integer :type
      t.integer :form
      t.string :producer
      t.string :product_id
      t.integer :attenuation_min
      t.integer :attenuation_max
      t.float :alcohol_tolerance

      t.timestamps
    end
  end
end
