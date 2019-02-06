class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :cost, :start_time, :date, :website
end
