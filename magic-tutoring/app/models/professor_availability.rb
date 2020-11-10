class ProfessorAvailability < ApplicationRecord
  belongs_to :professor

  def start_time
    self.date
  end
end
