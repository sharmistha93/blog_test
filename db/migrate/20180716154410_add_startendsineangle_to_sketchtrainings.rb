class AddStartendsineangleToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :startEndSineAngle, :float
  end
end
