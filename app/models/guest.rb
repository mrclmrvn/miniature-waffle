class Guest < ApplicationRecord
  has_many :reservations

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, :phone, presence: true
end
