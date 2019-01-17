class AddStartenddistToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :startEndDist, :float
  end
end
