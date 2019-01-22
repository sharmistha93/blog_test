class ChangeSessionToBeStringInTechniques < ActiveRecord::Migration[5.2]
  def change
    change_column :techniques, :session, :string
  end
end
