class Chatroom < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :professional, class_name: "User"
  has_many :messages, dependent: :destroy
end
