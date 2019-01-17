class CreateSketchtrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :sketchtrainings do |t|
      t.string :interpretation

      t.timestamps
    end
  end
end
