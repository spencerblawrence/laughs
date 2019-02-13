class ComedianProfile < ApplicationRecord
  belongs_to :user, -> { where role: "comedian" }

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
    return full_name
  end
end
