# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    user_id        1
    start_date     Date.parse('2013-09-21')
    end_date       Date.parse('2014-03-03')
    address        '40 East Oak'
    address2       'Apt #702'
    city           'Chicago'
    state          'IL'
    zip            '60611'
    apartment_type 'studio'
    price_low      1000
    price_high     3000
    description    'the happiest place on earth'
    bedrooms       1
    bathrooms      1
    square_footage 500
  end
end
