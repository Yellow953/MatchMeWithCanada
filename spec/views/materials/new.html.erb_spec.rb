require 'rails_helper'

RSpec.describe "materials/new", type: :view do
  before(:each) do
    assign(:material, Material.new(
      name: "MyString",
      price: 1.5,
      link: "MyString"
    ))
  end

  it "renders new material form" do
    render

    assert_select "form[action=?][method=?]", materials_path, "post" do

      assert_select "input[name=?]", "material[name]"

      assert_select "input[name=?]", "material[price]"

      assert_select "input[name=?]", "material[link]"
    end
  end
end
