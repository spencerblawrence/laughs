class Api::V1::EventsController < ApplicationController
  # serialization_scope :current_user
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end
end
