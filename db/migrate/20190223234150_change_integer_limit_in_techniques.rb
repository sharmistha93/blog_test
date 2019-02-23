class ChangeIntegerLimitInTechniques < ActiveRecord::Migration[5.2]
  def change
     change_column :techniques, :time, :integer, limit: 8
   end
end
