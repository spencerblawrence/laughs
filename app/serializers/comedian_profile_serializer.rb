class ComedianProfileSerializer < ActiveModel::Serializer
  attributes :id, :city_state, :description1, :photo1, :video1, :website, :first_name, :last_name, :full_name, :user_id

  def full_name
    return "#{object.first_name} #{object.last_name}"
  end
end
