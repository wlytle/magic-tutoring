class Apprentice < ApplicationRecord
  has_many :conclaves, class_name: "Conclave"
  has_many :professors, through: :conclaves
  has_many :apprentice_subjects
  has_many :subjects, through: :apprentice_subjects
  has_secure_password
  validate :reject_student

  def first_name
    self.name.split(" ")[0]
  end

  def reject_student
    if name.gsub(/\s+/, " ").strip.downcase == "tom riddle"
      errors.add(:name, "You don't even go here.")
    end
  end

  def apprentice_house #image
    house = self.house.tr(" ", "").downcase!
    "site/#{house}.jpg"
  end
  
end
