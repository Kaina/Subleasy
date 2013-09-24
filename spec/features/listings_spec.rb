require 'spec_helper'

describe 'Listing creation' do
  let(:user) { FactoryGirl.create(:user) }
  context 'can create a listing if logged in' do
    it 'can create a listing owned by that user' do
      visit "/listings/new"
     
      expect {
        select 'October', :from => 'listing_start_date_2i'
        select '31', :from => 'listing_start_date_3i'
        select '2013', :from => 'listing_start_date_1i'
        select 'November', :from => 'listing_end_date_2i'
        select '21', :from => 'listing_end_date_3i'
        select '2013', :from => 'listing_end_date_1i'
        fill_in 'listing_address', with: '2216 W Palmer Street'
        fill_in 'listing_city', with: 'Chicago'
        fill_in 'listing_state', with: 'IL'
        fill_in 'listing_zip', with: '60604'
        fill_in 'listing_apartment_type', with: 'Studio'
        fill_in 'listing_price_low', with: "$2000.00"
        fill_in 'listing_price_high', with: "$3000.00"
        fill_in 'listing_description', with: "I don't know I'm never there"
        fill_in 'listing_bedrooms', with: 2
        fill_in 'listing_bathrooms', with: 1
        fill_in 'listing_square_footage', with: 1500
        click_button 'Post Listing'
      }.to change(Listing, :count). by 1

      page.should have_content '2216 W Palmer Street'
      page.should have_content "I don't know I'm never there"
      page.should have_content "$2000"
      page.should have_content "$3000"
    end
  end
end
 


