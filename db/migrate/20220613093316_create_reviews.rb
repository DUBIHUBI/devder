class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :professional, foreign_key: { to_table: :users }
      t.references :student, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
