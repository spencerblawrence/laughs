class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :role, presence: true, inclusion: { in: %w(fan comedian owner) }

  has_many :signups
  has_many :events, through: :signups
  # this creates a method called events
  # calling this method will bring up the sign ups table
  # SELECT * SIGNUPS where this user id = user id in signups table

  has_one :comedian_profile

  has_many :lineup_slots, foreign_key: "comedian_id"
  has_many :gigs, through: :lineup_slots

  # we can't call this 'events' on line15 since we already have events on ln9
  # we also can't just call it gigs without further specification

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
    return full_name
  end
end
