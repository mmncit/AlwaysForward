require 'rails_helper'

RSpec.describe "dependents/show", type: :view do
  before(:each) do
    @dependent = assign(:dependent, Dependent.create!(
      :name => "Name",
      :cell_phone => "Cell Phone",
      :employer => "Employer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/Employer/)
  end
end
