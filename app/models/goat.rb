class Goat < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :goattype, presence: true
  validates :city, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :image_url, presence: true
end
