require 'rails_helper'

RSpec.describe Item, type: :model do
  subject { described_class.new(make: "Gibson", model: "es-335", year: 1995) }
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
  let(:user) { User.create(
    username: "brettster",
    email: "brett@mail.com",
    password: "test1234"
    )}

  describe 'validations' do
    it 'is valid with attributes' do
      expect(subject).to be_valid
    end
    it 'is not valid without a make' do
      subject.make = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a year' do
      subject.year = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a model' do
      subject.model = nil
      expect(subject).to_not be_valid
    end
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:type) }
    it { should have_many(:rentals) }
    it { should have_many(:renters) }

    it 'should correctly associate renters' do
      rental.renter = renter
      rental2.renter = renter2
      subject.rentals << rental2
      subject.rentals << rental
      subject.save

      expect(subject.rentals).to include(rental)
      expect(subject.renters).to include(renter)
      expect(subject.renters.count).to eq(2)
      expect(subject.rentals.count).to eq(2)
    end


  end

end
