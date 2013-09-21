class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.date     :start_date
      t.date     :end_date
      t.string   :address
      t.string   :address2
      t.string   :city
      t.string   :state
      t.string   :zip
      t.string   :apartment_type
      t.integer  :price_low
      t.integer  :price_high
      t.text     :description
      t.integer  :bedrooms
      t.integer  :bathrooms
      t.integer  :square_footage
      t.references :user

      t.timestamps
    end
  end
end
