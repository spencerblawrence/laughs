class Event < ApplicationRecord
  validates :name, presence: true
  validates :venue, presence: true
  validates :address, presence: true
  validates :start_date_time, presence: true
  validates :cost, presence: true, numericality: { only_integer: true }
  validates :website, :format => URI::regexp(%w(www http https))

  before_validation :set_started_at

  has_many :signups
  has_many :users, through: :signups

  attr_reader :started_at_date, :started_at_time

  # this is a getter
  def started_at_date
    if !@started_at_date_string
      @started_at_date_string = self.start_date_time.strftime("%A %-m/%d/%Y")
    end
    @started_at_date_string
  end

  # this is a setter
  def started_at_date=(date_string)
    @started_at_date_string = date_string
  end

  def started_at_time
    if !@started_at_time_string
      @started_at_time_string = self.start_date_time.strftime("%-l:%M %p")
    end
    @started_at_time_string
  end

  def started_at_time=(time_string)
    @started_at_time_string = time_string
  end

  protected
  # this is triggered with each save or create or new via before_validation
  def set_started_at
    if @started_at_date_string && @started_at_time_string
      self.start_date_time = Time.parse("#{@started_at_date_string} #{@started_at_time_string}")
    end
  end
end
