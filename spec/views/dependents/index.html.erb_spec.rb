require 'rails_helper'

RSpec.describe "dependents/index", type: :view do
  before(:each) do
    assign(:dependents, [
      Dependent.create!(
        :name => "Name",
        :cell_phone => "Cell Phone",
        :employer => "Employer"
      ),
      Dependent.create!(
        :name => "Name",
        :cell_phone => "Cell Phone",
        :employer => "Employer"
      )
    ])
  end

  it "renders a list of dependents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
  end
end
