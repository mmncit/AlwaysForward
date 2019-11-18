require 'rails_helper'

RSpec.describe "dependents/edit", type: :view do
  before(:each) do
    @dependent = assign(:dependent, Dependent.create!(
      :name => "MyString",
      :cell_phone => "MyString",
      :employer => "MyString"
    ))
  end

  it "renders the edit dependent form" do
    render

    assert_select "form[action=?][method=?]", dependent_path(@dependent), "post" do

      assert_select "input[name=?]", "dependent[name]"

      assert_select "input[name=?]", "dependent[cell_phone]"

      assert_select "input[name=?]", "dependent[employer]"
    end
  end
end
