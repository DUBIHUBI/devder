class Favourite < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :professional, class_name: "User"

  validates :student_id, uniqueness: { scope: :professional_id }
end
