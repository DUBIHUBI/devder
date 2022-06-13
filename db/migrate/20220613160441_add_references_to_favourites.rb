class AddReferencesToFavourites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favourites, :student, foreign_key: { to_table: :users }
    add_reference :favourites, :professional, foreign_key: { to_table: :users }
  end
end
