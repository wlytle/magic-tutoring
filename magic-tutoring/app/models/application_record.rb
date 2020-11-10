class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def duration
    #get duration in seconds then convert to hours
    (self.finish_time - self.begin_time) / 3600
  end

  def format_start_time
    self.begin_time.strftime("%I:%M %p")
  end
end
