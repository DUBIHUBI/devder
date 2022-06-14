class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|

      t.timestamps
    end
  end
end
