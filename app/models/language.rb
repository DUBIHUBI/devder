class Language < ApplicationRecord

  has_many :user_languages, dependent: :destroy
  has_many :users, through: :user_languages

end
