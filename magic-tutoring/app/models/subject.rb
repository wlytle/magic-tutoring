class Subject < ApplicationRecord
  has_many :professors
  has_many :apprentice_subjects
  has_many :apprentices, through: :apprentice_subjects

  def availabilities
    self.professors.map(&:professor_availabilities).flatten
  end

  def subject_image
    subject = self.name.split(" ").first.downcase!
    "subjects/#{subject}.jpg"
  end
end
