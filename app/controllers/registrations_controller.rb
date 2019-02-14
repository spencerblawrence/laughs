class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.role == "comedian"
      return "/comedians/new"
    end
  end
end
