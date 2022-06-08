class AddAcceptedColumnToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :accepted, :boolean, default: false
  end
end
