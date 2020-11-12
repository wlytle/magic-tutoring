class Conclave < ApplicationRecord
  belongs_to :professor
  belongs_to :apprentice

  validate :in_the_past

  def start_time
    self.date
  end

  def in_the_past
    if (date && date.to_date < Time.now.to_date) || (begin_time && begin_time.strftime("%k:%M") < Time.now.strftime("%k:%M"))
      errors.add(:begin_time, "This date as already passed")
    end
  end
end
