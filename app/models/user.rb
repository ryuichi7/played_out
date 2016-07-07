class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :username

  has_many :items
  has_many :rentals, foreign_key: :renter_id
  has_many :rented_items, through: :rentals, source: "item"
end
