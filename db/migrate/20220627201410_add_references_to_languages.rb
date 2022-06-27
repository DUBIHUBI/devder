class AddReferencesToLanguages < ActiveRecord::Migration[7.0]
  def change
    add_reference :languages, :student, foreign_key: { to_table: :users }
    add_reference :languages, :professional, foreign_key: { to_table: :users }
  end
end
