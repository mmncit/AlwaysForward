require 'rails_helper'

RSpec.describe "insurance_coverages/index", type: :view do
  before(:each) do
    assign(:insurance_coverages, [
      InsuranceCoverage.create!(
        :employer => "Employer",
        :insurance_company => "Insurance Company",
        :policy_number => "Policy Number",
        :coverage_percentage => "Coverage Percentage",
        :coverage_type => "Coverage Type",
        :product_quantity => 2.5,
        :maximum_amount => 3.5,
        :coverage_frequency => 4.5,
        :coverage_period => 5.5
      ),
      InsuranceCoverage.create!(
        :employer => "Employer",
        :insurance_company => "Insurance Company",
        :policy_number => "Policy Number",
        :coverage_percentage => "Coverage Percentage",
        :coverage_type => "Coverage Type",
        :product_quantity => 2.5,
        :maximum_amount => 3.5,
        :coverage_frequency => 4.5,
        :coverage_period => 5.5
      )
    ])
  end

  it "renders a list of insurance_coverages" do
    render
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
    assert_select "tr>td", :text => "Insurance Company".to_s, :count => 2
    assert_select "tr>td", :text => "Policy Number".to_s, :count => 2
    assert_select "tr>td", :text => "Coverage Percentage".to_s, :count => 2
    assert_select "tr>td", :text => "Coverage Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
  end
end
