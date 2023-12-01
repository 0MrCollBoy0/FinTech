class Payment < ApplicationRecord
  belongs_to :user
  validates :title, presence:true
  validates :amount, presence:true, numericality: { greater_than: 0 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :receiver

  private
  def receiver
    unless User.find_by(email: email)
      errors.add(:base, 'Пользователь не найден')
    end
  end
end
