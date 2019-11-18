require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :clinic => "MyString",
      :name => "MyString",
      :home_phone => "MyString",
      :cell_phone => "MyString",
      :address => "MyString",
      :city => "MyString",
      :province => "MyString",
      :postal_code => "MyString",
      :employer => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input[name=?]", "patient[clinic]"

      assert_select "input[name=?]", "patient[name]"

      assert_select "input[name=?]", "patient[home_phone]"

      assert_select "input[name=?]", "patient[cell_phone]"

      assert_select "input[name=?]", "patient[address]"

      assert_select "input[name=?]", "patient[city]"

      assert_select "input[name=?]", "patient[province]"

      assert_select "input[name=?]", "patient[postal_code]"

      assert_select "input[name=?]", "patient[employer]"
    end
  end
end
