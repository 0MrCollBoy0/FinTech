class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if user_signed_in?
      @user = current_user
      puts(@user.first_name)
    else
      redirect_to new_user_registration_path
    end
  end

end
