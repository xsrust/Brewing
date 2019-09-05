class AddHopAdditionUse < ActiveRecord::Migration[5.2]
  def change
    add_column    :hop_additions, :use, :integer
  end
end
