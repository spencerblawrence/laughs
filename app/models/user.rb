class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :role, presence: true, inclusion: { in: %w(fan comedian owner) }

  has_many :signups
  has_many :events, through: :signups

  # belongs_to :comedian_profile

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
    return full_name
  end
end
