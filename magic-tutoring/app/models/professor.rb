class Professor < ApplicationRecord
  belongs_to :subject
  has_many :conclaves
  has_many :apprentices, through: :conclaves
  has_secure_password
end