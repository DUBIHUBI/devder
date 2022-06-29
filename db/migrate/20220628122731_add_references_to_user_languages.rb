class AddReferencesToUserLanguages < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_languages, :user, foreign_key: true
    add_reference :user_languages, :language, foreign_key: true
  end
end
