class Item < ActiveRecord::Base
  belongs_to :user
  has_many :types
  has_many :rentals
  has_many :renters, through: :rentals, source: "renter"

  validates_presence_of :make, :model, :year
end
