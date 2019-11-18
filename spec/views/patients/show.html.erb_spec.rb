require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :clinic => "Clinic",
      :name => "Name",
      :home_phone => "Home Phone",
      :cell_phone => "Cell Phone",
      :address => "Address",
      :city => "City",
      :province => "Province",
      :postal_code => "Postal Code",
      :employer => "Employer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Clinic/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Employer/)
  end
end
