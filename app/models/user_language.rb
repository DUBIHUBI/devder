class UserLanguage < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :professional, class_name: "User"
  belongs_to :language
end
