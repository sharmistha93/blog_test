class AddBbdiaglenToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :bbDiagLen, :float
  end
end
