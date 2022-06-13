class Review < ApplicationRecord
  belongs_to :professional, class_name: "User"
  belongs_to :student, class_name: "User"

  validates :rating, numericality: { in: 1..5 }
end
