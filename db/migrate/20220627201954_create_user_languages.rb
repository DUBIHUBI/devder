class CreateUserLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :user_languages do |t|

      t.timestamps
    end
  end
end
