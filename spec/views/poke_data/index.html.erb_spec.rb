require 'rails_helper'

RSpec.describe "poke_data/index", type: :view do
  before(:each) do
    assign(:poke_data, [
      PokeDatum.create!(
        name: "Name",
        picture: "Picture"
      ),
      PokeDatum.create!(
        name: "Name",
        picture: "Picture"
      )
    ])
  end

  it "renders a list of poke_data" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Picture".to_s, count: 2
  end
end
