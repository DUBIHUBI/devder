class User < ApplicationRecord
  has_many :meetings_as_student, class_name: "Meeting", foreign_key: :student_id
  has_many :meetings_as_professional, class_name: "Meeting", foreign_key: :professional_id

  has_many :favourites_as_student, class_name: "Favourite", foreign_key: :student_id
  has_many :favourites_as_professional, class_name: "Favourite", foreign_key: :professional_id

  has_many :chatrooms_as_student, class_name: "Chatroom", foreign_key: :student_id
  has_many :chatrooms_as_professional, class_name: "Chatroom", foreign_key: :professional_id

  has_many :reviews_as_student, class_name: "Review", foreign_key: :student_id
  has_many :reviews_as_professional, class_name: "Review", foreign_key: :professional_id

  has_many :languages_as_student, class_name: "Meeting", foreign_key: :student_id
  has_many :languages_as_professional, class_name: "Meeting", foreign_key: :professional_id

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def self.company_types

    User.distinct.pluck(:company_type).reject { |value| value.nil? }

  end

  def self.funding_stages

    User.distinct.pluck(:funding_stage).reject { |value| value.nil? }

  end

  def self.roles

    User.distinct.pluck(:role).reject { |value| value.nil? }

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.student
    User.select { |student|
      student.student
    }
  end
end
