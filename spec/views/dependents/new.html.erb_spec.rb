require 'rails_helper'

RSpec.describe "dependents/new", type: :view do
  before(:each) do
    assign(:dependent, Dependent.new(
      :name => "MyString",
      :cell_phone => "MyString",
      :employer => "MyString"
    ))
  end

  it "renders new dependent form" do
    render

    assert_select "form[action=?][method=?]", dependents_path, "post" do

      assert_select "input[name=?]", "dependent[name]"

      assert_select "input[name=?]", "dependent[cell_phone]"

      assert_select "input[name=?]", "dependent[employer]"
    end
  end
end
