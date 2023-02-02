require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        name: "Name",
        price: 2.5,
        link: "Link"
      ),
      Material.create!(
        name: "Name",
        price: 2.5,
        link: "Link"
      )
    ])
  end

  it "renders a list of materials" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Link".to_s), count: 2
  end
end
