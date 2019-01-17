class RemovePointcountFromSketchtraining < ActiveRecord::Migration[5.2]
  def change
    remove_column :sketchtrainings, :pointCount, :integer
  end
end
