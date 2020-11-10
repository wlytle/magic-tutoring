class Professor < ApplicationRecord
  belongs_to :subject
  has_many :conclaves, class_name: "Conclave"
  has_many :apprentices, through: :conclaves
  has_many :professor_availabilities, dependent: :destroy
  has_secure_password

  validate :too_evil

  def too_evil
    if name && name == "Voldemort"
      errors.add(:name, "It appears you are too evil to teach here.")
    end
  end

  def professor_image
    prof = self.name.split(" ").first.downcase!
    if Dir["app/assets/images/professors/#{prof}.jpg"].empty?
      "professors/default.jpg"
    else
      "professors/#{prof}.jpg"
    end
  end 
end
