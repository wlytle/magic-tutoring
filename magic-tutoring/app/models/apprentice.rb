class Apprentice < ApplicationRecord
  has_many :conclaves
  has_many :professors, through: :conclaves
  has_many :apprentice_subjects
  has_many :subjects, through: :apprentice_subjects
  has_secure_password
  validate :reject_student

  def reject_student
    if name.gsub(/\s+/, " ").strip.downcase == "tom riddle"
      errors.add(:name, "You don't even go here.")
    end
  end
end
