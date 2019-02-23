class AddChargeToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :charge, :string
  end
end
