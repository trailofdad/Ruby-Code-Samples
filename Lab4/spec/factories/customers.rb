# spec/factories/customers.rb
FactoryGirl.define do
  factory :customer do |f|
    f.FirstName "John"
    f.LastName "Doe"
    f.Email "example@gmail.com"
  end
end