class Apprentice < ApplicationRecord
    has_many :conclaves
    has_many :professors, through: :conclaves
    has_many :apprentice_subjects
    has_many :subjects, through: :apprentice_subjects
    has_secure_password 
end
