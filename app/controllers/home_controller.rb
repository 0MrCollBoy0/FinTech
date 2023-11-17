class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to edit_user_registration_path

    else
      redirect_to new_user_registration_path
    end
    def destroy
      sign_out
      redirect_to new_user_registration_path
    end
  end
end
