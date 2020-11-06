class ApprenticeSubject < ApplicationRecord
  belongs_to :apprentice
  belongs_to :subject
end
