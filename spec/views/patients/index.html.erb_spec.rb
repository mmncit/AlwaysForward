require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :clinic => "Clinic",
        :name => "Name",
        :home_phone => "Home Phone",
        :cell_phone => "Cell Phone",
        :address => "Address",
        :city => "City",
        :province => "Province",
        :postal_code => "Postal Code",
        :employer => "Employer"
      ),
      Patient.create!(
        :clinic => "Clinic",
        :name => "Name",
        :home_phone => "Home Phone",
        :cell_phone => "Cell Phone",
        :address => "Address",
        :city => "City",
        :province => "Province",
        :postal_code => "Postal Code",
        :employer => "Employer"
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Clinic".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Province".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
  end
end
