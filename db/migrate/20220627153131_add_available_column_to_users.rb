class AddAvailableColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :available, :boolean, default: true
  end
end
