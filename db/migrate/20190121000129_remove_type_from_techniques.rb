class RemoveTypeFromTechniques < ActiveRecord::Migration[5.2]
  def change
    remove_column :techniques, :type, :string
  end
end
