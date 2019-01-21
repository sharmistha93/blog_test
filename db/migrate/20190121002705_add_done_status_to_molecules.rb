class AddDoneStatusToMolecules < ActiveRecord::Migration[5.2]
  def change
    add_column :molecules, :donestatus, :string
  end
end
