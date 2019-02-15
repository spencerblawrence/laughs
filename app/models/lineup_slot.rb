class LineupSlot < ApplicationRecord
  belongs_to :comedian, class_name: 'User'
  belongs_to :gig, class_name: 'Event'
end
