class Api::V1::ComedianProfilesController < ApplicationController
  def index
    render json: ComedianProfile.all.order(last_name: :asc)
  end

  def show
    render json: ComedianProfile.find(params[:id])
  end
end
