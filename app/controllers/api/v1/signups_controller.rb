class Api::V1::SignupsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    signup = Signup.new(signup_params)
    signup.user = current_user

    if signup.save
      render json: signup
    else
      render json: { error: signup.errors.full_messages }
    end
  end

  private
  def signup_params
    params.require(:signup).permit(:event_id)
  end
end
