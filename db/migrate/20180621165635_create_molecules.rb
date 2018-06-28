class CreateMolecules < ActiveRecord::Migration[5.2]
  def change
    create_table :molecules do |t|
      t.string :name
      t.string :central_atom
      t.string :other_atoms

      t.timestamps
    end
  end
end
