require 'rails_helper'

RSpec.describe "materials/edit", type: :view do
  let(:material) {
    Material.create!(
      name: "MyString",
      price: 1.5,
      link: "MyString"
    )
  }

  before(:each) do
    assign(:material, material)
  end

  it "renders the edit material form" do
    render

    assert_select "form[action=?][method=?]", material_path(material), "post" do

      assert_select "input[name=?]", "material[name]"

      assert_select "input[name=?]", "material[price]"

      assert_select "input[name=?]", "material[link]"
    end
  end
end
