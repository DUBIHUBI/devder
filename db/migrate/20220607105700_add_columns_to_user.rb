class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :location, :string
    add_column :users, :bio, :text
    add_column :users, :desired_role, :string
    add_column :users, :student, :boolean, default: true
    add_column :users, :role, :string
    add_column :users, :company_name, :string
    add_column :users, :company_type, :string
    add_column :users, :company_size, :integer
    add_column :users, :funding_stage, :string
    add_column :users, :hq_location, :string
  end
end
