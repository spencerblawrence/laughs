class ComediansController < ApplicationController
  def index
    @users = User.where(role: "Comedian")
  end

  def show
  end
end
