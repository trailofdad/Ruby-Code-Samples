require 'rspec'

describe 'My behaviour' do

  it 'should do something' do

    expect(true).to eq(true)
  end
end

# spec/models/customer_spec.rb
require 'spec_helper'
require 'rails_helper'

describe Customer do
  it "has a valid factory" do
    expect(FactoryGirl.create(:customer)).to be_valid
  end

  it "First Customer is John" do
    act1 = Customer.find(1)
    expect(act1.first_name).to eq("John")
  end

end