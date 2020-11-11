class ApprenticeSubject < ApplicationRecord
  belongs_to :apprentice
  belongs_to :subject

  validates :subject, uniqueness: { scope: :apprentice }
end
