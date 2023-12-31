class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :payments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name,presence:true, length: { in: 1..100 }
  validates :last_name, presence:true, length: { in: 1..100 }
  validates :balance, presence: true, comparison: { greater_than: 0}
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
