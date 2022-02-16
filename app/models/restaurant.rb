class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
  validates :phone_number, presence: true
  validates :address, presence: true
end
