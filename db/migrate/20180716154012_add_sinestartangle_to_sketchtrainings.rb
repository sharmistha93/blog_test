class AddSinestartangleToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :sineStartAngle, :float
  end
end
