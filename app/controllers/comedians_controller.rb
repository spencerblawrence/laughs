class ComediansController < ApplicationController
  def index
    @comedians = ComedianProfile.all
  end

  def new
    @comedian = ComedianProfile.new
    @comedian_profile = ComedianProfile.new
  end

  def show
    @comedian_profile = ComedianProfile.find_by(user_id: params[:id])
    @comedian = User.find(params[:id])
  end
end
