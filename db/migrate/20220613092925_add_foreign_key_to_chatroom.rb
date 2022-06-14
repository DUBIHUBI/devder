class AddForeignKeyToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :student, foreign_key: { to_table: :users }
    add_reference :chatrooms, :professional, foreign_key: {to_table: :users}
  end
end
