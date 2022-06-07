class AddReferencesToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_reference :meetings, :student, foreign_key: { to_table: :users }
    add_reference :meetings, :professional, foreign_key: { to_table: :users }
  end
end
