class EventsController < ApplicationController
  def index
    @events = Event.all.order(start_date_time: :asc)
  end

  def show
    @event = Event.find(params[:id])
  end
end
