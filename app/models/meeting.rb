class Meeting < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :professional, class_name: "User"

  validates :date, presence: true
  validates :time, presence: true
end
