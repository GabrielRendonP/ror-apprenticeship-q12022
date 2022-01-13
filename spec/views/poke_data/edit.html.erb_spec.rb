require 'rails_helper'

RSpec.describe "poke_data/edit", type: :view do
  before(:each) do
    @poke_datum = assign(:poke_datum, PokeDatum.create!(
      name: "MyString",
      picture: "MyString"
    ))
  end

  it "renders the edit poke_datum form" do
    render

    assert_select "form[action=?][method=?]", poke_datum_path(@poke_datum), "post" do

      assert_select "input[name=?]", "poke_datum[name]"

      assert_select "input[name=?]", "poke_datum[picture]"
    end
  end
end
