class ProfessorAvailability < ApplicationRecord
  belongs_to :professor
  validates :date, :begin_time, :finish_time, presence: true

  def in_the_past
    if (date && date.to_date > Time.now.to_date) || (begin_time && begin_time.strftime("%k:%M") < Time.now.strftime("%k:%M"))
      erros.add(:begin_time, "This date as already passed")
    end
  end

  #needed for simple_calendar to find the day of an event
  def start_time
    self.date
  end
end
