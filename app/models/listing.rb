class Listing < ActiveRecord::Base
  
  validates_presence_of :start_date, :end_date, 
                        :bedrooms, :bathrooms, 
                        :address, :state, 
                        :city, :zip, 
                        :price_low, :price_high, 
                        :user_id
end


