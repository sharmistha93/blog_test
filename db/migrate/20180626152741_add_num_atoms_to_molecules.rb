class AddNumAtomsToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :num_atoms, :integer
  end
end
