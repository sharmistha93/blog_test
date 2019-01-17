class AddStartendcosineangleToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :startEndCosineAngle, :float
  end
end
