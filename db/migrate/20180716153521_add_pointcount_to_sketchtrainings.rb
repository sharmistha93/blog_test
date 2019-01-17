class AddPointcountToSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchtrainings, :pointCount, :integer
  end
end
