class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :events, :signups, :comedians

  def comedians
  end
end
