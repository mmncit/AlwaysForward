require 'rails_helper'

RSpec.describe "insurance_coverages/edit", type: :view do
  before(:each) do
    @insurance_coverage = assign(:insurance_coverage, InsuranceCoverage.create!(
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

  it "renders the edit insurance_coverage form" do
    render

    assert_select "form[action=?][method=?]", insurance_coverage_path(@insurance_coverage), "post" do

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
