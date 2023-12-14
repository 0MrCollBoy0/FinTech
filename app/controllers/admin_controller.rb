class AdminController < ApplicationController
  def index
    @payments = Payment.all.sort
    authorize Payment, policy_class: AdminPolicy
  rescue Pundit::NotAuthorizedError
    redirect_to root_path
  end
end
