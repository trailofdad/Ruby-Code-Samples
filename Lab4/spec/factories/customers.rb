# spec/factories/customers.rb
FactoryGirl.define do
  factory :customer do |f|
    f.FirstName :FirstName
    f.LastName :LastName
    f.Email "example@gmail.com"
  end

  # factory :customer do |b|
  #   b.FirstName "Jane"
  #   b.LastName "Smith"
  #   b.Email "example@gmail.com"
  # end
end