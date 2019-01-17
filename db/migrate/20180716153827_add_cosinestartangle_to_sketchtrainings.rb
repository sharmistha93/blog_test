class AddCosinestartangleToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :cosineStartAngle, :float
  end
end
