class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :events, :signups
end
