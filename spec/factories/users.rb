# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name "Public"
    gender "male"
    birthday Date.parse('1988-05-01')
    email "johnq@public.com"
    password "password"
  end
end
