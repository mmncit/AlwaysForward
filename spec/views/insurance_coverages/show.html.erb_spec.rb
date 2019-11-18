require 'rails_helper'

RSpec.describe "insurance_coverages/show", type: :view do
  before(:each) do
    @insurance_coverage = assign(:insurance_coverage, InsuranceCoverage.create!(
      :employer => "Employer",
      :insurance_company => "Insurance Company",
      :policy_number => "Policy Number",
      :coverage_percentage => "Coverage Percentage",
      :coverage_type => "Coverage Type",
      :product_quantity => 2.5,
      :maximum_amount => 3.5,
      :coverage_frequency => 4.5,
      :coverage_period => 5.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Employer/)
    expect(rendered).to match(/Insurance Company/)
    expect(rendered).to match(/Policy Number/)
    expect(rendered).to match(/Coverage Percentage/)
    expect(rendered).to match(/Coverage Type/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
  end
end
