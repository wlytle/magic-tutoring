class Subject < ApplicationRecord
    has_many :professors
    has_many :apprentice_subjects
    has_many :apprentices, through: :apprentice_subjects

end
