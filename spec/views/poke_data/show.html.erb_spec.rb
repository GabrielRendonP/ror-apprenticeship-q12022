require 'rails_helper'

RSpec.describe "poke_data/show", type: :view do
  before(:each) do
    @poke_datum = assign(:poke_datum, PokeDatum.create!(
      name: "Name",
      picture: "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Picture/)
  end
end
