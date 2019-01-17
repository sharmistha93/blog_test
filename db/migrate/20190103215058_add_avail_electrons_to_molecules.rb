class AddAvailElectronsToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :availElectrons, :string
  end
end
