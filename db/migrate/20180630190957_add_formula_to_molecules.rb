class AddFormulaToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :formula, :string
  end
end
