class ComedianProfilesController < ApplicationController
  def create
    profile = ComedianProfile.new(profile_params)
    profile.user_id = current_user.id

    if profile.save
        redirect_to "/comedians/#{profile.user_id}"
    else
        puts "There was an error."
      puts profile.errors
    end
  end

  private
  def profile_params
    params.require(:comedian_profile).permit(:first_name, :last_name, :city_state, :website, :photo1, :description1, :video1)
  end
end
