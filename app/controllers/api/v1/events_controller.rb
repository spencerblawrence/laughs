class Api::V1::EventsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end

  def create
    event = Event.new(event_params)
    # event.user = current_user

    if event.save
      render json: event
    else
      render json: { error: event.errors.full_messages }
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :venue, :address, :started_at_date, :started_at_time, :start_date_time, :end_date_time, :cost, :website, :description, :recurring)
  end
end

# here is some draft pseudo code for updating recurring events
# class EventsController
#
#   def index
#     @non_events = Event.where(recurring: false)
#     # recurring_events = @events.map { |event| event.recurring == true}
#     @recurring_events = Event.where(recurring: true)
#     update_recurring_events(@recurring_events)
#     @events = @non_events + @recurring_events
#   end
#
#   private
#   def update_recurring_events(recurring_events)
#     recurring_events.each do |event|
#       if event.start_date_time < Date.today
#         # increase the date by 7
#       end
#     end
#   end
