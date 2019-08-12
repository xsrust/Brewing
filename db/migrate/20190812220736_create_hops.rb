class CreateHops < ActiveRecord::Migration[5.2]
  def change
    create_table :hops do |t|
      t.string :name
      t.string :producer
      t.string :origin
      t.integer :year
      t.integer :form
      t.float :alpha_acid
      t.float :beta_acid
      t.integer :type

      t.timestamps
    end
  end
end
