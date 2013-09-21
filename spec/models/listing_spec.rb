require 'spec_helper'

describe Listing do 
  let(:listing) { FactoryGirl.create(:listing) }
  #date, price, location, bedrooms, baths
  context "required fields" do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:bedrooms) }
    it { should validate_presence_of(:bathrooms) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:zip) }
    it { should validate_presence_of(:price_low) }
    it { should validate_presence_of(:price_high) }
    it { should validate_presence_of(:user_id) }
  end
end
