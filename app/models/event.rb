require 'time'

class Event < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :cost, presence: true
  validates :website, :format => URI::regexp(%w(http https))

  def date
    return self.start_date_time.strftime("%m/%d/%Y")
  end

  def start_time
    time = self.start_date_time.in_time_zone("Eastern Time (US & Canada)")
    time = time.strftime("%-l:%M %p")
    return time
  end
end
