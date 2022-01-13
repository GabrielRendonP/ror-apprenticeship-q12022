require 'rails_helper'

RSpec.describe "poke_data/new", type: :view do
  before(:each) do
    assign(:poke_datum, PokeDatum.new(
      name: "MyString",
      picture: "MyString"
    ))
  end

  it "renders new poke_datum form" do
    render

    assert_select "form[action=?][method=?]", poke_data_path, "post" do

      assert_select "input[name=?]", "poke_datum[name]"

      assert_select "input[name=?]", "poke_datum[picture]"
    end
  end
end
