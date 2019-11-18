require 'rails_helper'

RSpec.describe "insurance_coverages/new", type: :view do
  before(:each) do
    assign(:insurance_coverage, InsuranceCoverage.new(
      :employer => "MyString",
      :insurance_company => "MyString",
      :policy_number => "MyString",
      :coverage_percentage => "MyString",
      :coverage_type => "MyString",
      :product_quantity => 1.5,
      :maximum_amount => 1.5,
      :coverage_frequency => 1.5,
      :coverage_period => 1.5
    ))
  end

  it "renders new insurance_coverage form" do
    render

    assert_select "form[action=?][method=?]", insurance_coverages_path, "post" do

      assert_select "input[name=?]", "insurance_coverage[employer]"

      assert_select "input[name=?]", "insurance_coverage[insurance_company]"

      assert_select "input[name=?]", "insurance_coverage[policy_number]"

      assert_select "input[name=?]", "insurance_coverage[coverage_percentage]"

      assert_select "input[name=?]", "insurance_coverage[coverage_type]"

      assert_select "input[name=?]", "insurance_coverage[product_quantity]"

      assert_select "input[name=?]", "insurance_coverage[maximum_amount]"

      assert_select "input[name=?]", "insurance_coverage[coverage_frequency]"

      assert_select "input[name=?]", "insurance_coverage[coverage_period]"
    end
  end
end
