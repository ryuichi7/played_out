require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(username: "brettster", email: "brett@mail.com", password: "test1234") }
  let(:item) { Item.create(make: "Gibson", model: "es-335", year: 1995) }
  let(:item2) { Item.create(make: "Fender", model: "stratocaster", year: 1996)}
  let(:rental) { Rental.create(
    price_per_day: 20,
    start_date: Time.now,
    end_date: Time.now + 1.week
    )}
  let(:rental2) { Rental.create(
    price_per_day: 30,
    start_date: Time.now,
    end_date: Time.now + 1.week
    )}
  let(:renter) { User.create(
    username: "emily",
    email: "emily@mail.com",
    password: "test1234"
  )}
  let(:renter2) { User.create(
    username: "evan",
    email: "evan@mail.com",
    password: "test1234"
  )}

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  describe 'associations' do
    it { should have_many(:items) }
    it { should have_many(:rentals) }
    it { should have_many(:rented_items) }

    it 'should correctly associate rented items' do
      rental.item = item
      rental.renter = subject
      rental.save

      expect(subject.rented_items).to include(item)
    end

    it 'should correctly add rentals' do
      rental.item = item
      rental.renter = subject
      rental.save
      
      expect(subject.rentals).to include(rental)
    end

  end
end
