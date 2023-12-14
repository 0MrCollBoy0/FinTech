class PaymentPolicy < ApplicationPolicy
  attr_reader :user, :payment

  def initialize(user, payment)
    @user = user
    @payment = payment
  end

  def destroy?
    @user.admin
  end
end
