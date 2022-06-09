class ChangeLocationToAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :location, :address
  end
end
