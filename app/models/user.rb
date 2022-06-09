class User < ApplicationRecord
  has_many :meetings_as_student, class_name: "Meeting", foreign_key: :student_id
  has_many :meetings_as_professional, class_name: "Meeting", foreign_key: :professional_id

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.company_types
    User.distinct.pluck(:company_type)
  end

  def self.funding_stages
    User.distinct.pluck(:funding_stage)
  end
end
