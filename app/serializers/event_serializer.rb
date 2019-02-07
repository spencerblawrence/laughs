class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :venue, :address, :started_at_date, :started_at_time, :start_date_time, :end_date_time, :cost, :website, :description
end
