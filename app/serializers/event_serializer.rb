class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :venue, :address, :started_at_date, :started_at_time, :start_date_time, :end_date_time, :cost, :website, :description, :recurring, :image_url, :lat, :lng, :comedians

  def comedians
    comedians = object.comedians
    ActiveModel::Serializer::CollectionSerializer.new(
     comedians,
     each_serializer: UserSerializer,
   )
  end
end
