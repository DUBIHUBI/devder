class AddReferencesToUserLanguage < ActiveRecord::Migration[7.0]

  def change
    add_reference :user_languages, :student, foreign_key: { to_table: :users }
    add_reference :user_languages, :professional, foreign_key: { to_table: :users }
    add_reference :user_languages, :language, foreign_key: { to_table: :languages }
  end

end
