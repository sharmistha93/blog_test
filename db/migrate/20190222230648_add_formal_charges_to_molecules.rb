class AddFormalChargesToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :formalCharges, :string
  end
end
