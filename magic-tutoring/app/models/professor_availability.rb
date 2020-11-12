class ProfessorAvailability < ApplicationRecord
  belongs_to :professor
  validates :date, :begin_time, :finish_time, presence: true

  def start_time
    self.date
  end
end
