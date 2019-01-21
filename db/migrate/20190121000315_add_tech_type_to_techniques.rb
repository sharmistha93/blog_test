class AddTechTypeToTechniques < ActiveRecord::Migration[5.2]
  def change
    add_column :techniques, :techType, :string
  end
end
