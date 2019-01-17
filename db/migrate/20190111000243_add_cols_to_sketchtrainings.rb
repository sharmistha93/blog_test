class AddColsToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :angleTrav9, :float
    add_column :sketchtrainings, :angleTrav10, :float
    add_column :sketchtrainings, :angleTrav11, :float
    add_column :sketchtrainings, :maxSpeed, :float
    add_column :sketchtrainings, :pathDuration, :float
  end
end
