class Professor < ApplicationRecord
  belongs_to :subject
  has_many :conclaves, class_name: "Conclave"
  has_many :apprentices, through: :conclaves
  has_secure_password

  validate :too_evil

  def too_evil
    if name && name == "Voldemort"
      errors.add(:name, "It appears you are too evil to teach here.")
    end
  end
end
