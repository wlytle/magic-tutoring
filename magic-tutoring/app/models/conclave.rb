class Conclave < ApplicationRecord
  belongs_to :professor
  belongs_to :apprentice

  def start_time
    self.date
  end

  # def in_the_past
  #   if date && date < Time.now || date && date time_begin && time_begin
  # end
end
