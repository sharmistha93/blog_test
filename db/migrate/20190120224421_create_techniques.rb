class CreateTechniques < ActiveRecord::Migration[5.2]
  def change
    create_table :techniques do |t|
      t.integer :session
      t.string :molecule
      t.string :type
      t.integer :time

      t.timestamps
    end
  end
end
