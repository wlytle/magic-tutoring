class ProfessorAvailability < ApplicationRecord
  belongs_to :professor

  def duration
    #get duration in seconds then convert to hours
    (self.finish_time - self.begin_time) / 3600
  end

  def start_time
    self.date
  end
end
