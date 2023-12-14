class AdminPolicy < ApplicationPolicy
  attr_reader :user, :payment

  def initialize(user, payment)
    @user = user
    @payment = payment
  end

  def index?
    @user.admin
  end
end
