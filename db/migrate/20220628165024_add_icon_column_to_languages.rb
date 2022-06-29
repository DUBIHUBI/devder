class AddIconColumnToLanguages < ActiveRecord::Migration[7.0]
  def change
    add_column :languages, :icon, :string
  end
end
