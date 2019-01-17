class AddStrokelengthToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :strokeLength, :float
  end
end
