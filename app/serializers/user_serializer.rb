class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :events, :signups, :full_name, :profile_photo, :comedian_profile, :gigs
end
