class Conclave < ApplicationRecord
  belongs_to :professor
  belongs_to :apprentice

  def start_time
    self.time
  end
end
