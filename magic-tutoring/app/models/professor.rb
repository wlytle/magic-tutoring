class Professor < ApplicationRecord
  belongs_to :subject
  has_many :conclaves, class_name: "Conclave", dependent: :destroy
  has_many :apprentices, through: :conclaves
  has_many :professor_availabilities, dependent: :destroy
  has_secure_password
  validates :username, :name, uniqueness: true
  validate :too_evil

  def too_evil
    if name && name.gsub(/\s+/, " ").strip.downcase == "voldemort"
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

  def professor_house
    house = self.house.tr(" ", "").downcase!
    "site/#{house}.jpg"
  end
end
