require 'rails_helper'

RSpec.describe "materials/show", type: :view do
  before(:each) do
    assign(:material, Material.create!(
      name: "Name",
      price: 2.5,
      link: "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Link/)
  end
end
