class AddFullElectronsToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :fullElectrons, :string
  end
end
