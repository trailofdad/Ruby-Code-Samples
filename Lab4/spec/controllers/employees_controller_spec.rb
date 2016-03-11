require 'rspec'
require 'spec_helper'
require 'rails_helper'

describe EmployeesController do
  # spec/controllers/employees_controller_spec.rb

  # ... other describe blocks omitted omitted
  describe "GET #index" do
    it "populates an array of employees" do
      employee = FactoryGirl.create(:employee, FirstName:"New", LastName: "User1")

      get :index
      expect(assigns(:employees)).to eq([employee])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

end