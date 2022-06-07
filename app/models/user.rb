class User < ApplicationRecord
  has_many :meetings_as_student, class_name: "Meeting", foreign_key: :student_id
  has_many :meetings_as_professional, class_name: "Meeting", foreign_key: :professional_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
