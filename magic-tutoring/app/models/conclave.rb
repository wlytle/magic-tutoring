class Conclave < ApplicationRecord
  belongs_to :professor
  belongs_to :apprentice

  def start_time
    self.date
  end

  # def in_the_past
  #   if date && date < Date.now || date && date > Date.now begin_time
  # end
end
