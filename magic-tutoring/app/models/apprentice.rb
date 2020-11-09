class Apprentice < ApplicationRecord
  has_many :conclaves, class_name: "Conclaves"
  has_many :professors, through: :conclaves
  has_many :apprentice_subjects
  has_many :subjects, through: :apprentice_subjects
  has_secure_password
  validates :name, uniqueness: true
end
