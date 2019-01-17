class AddBbdiagangleToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :bbDiagAngle, :float
  end
end
