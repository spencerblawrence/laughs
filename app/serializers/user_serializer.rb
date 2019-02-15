class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :events, :signups, :full_name, :profile_photo, :comedian_profile, :gigs

  # def started_at_date
  #   binding.pry
  #   object.events
  # end

end
