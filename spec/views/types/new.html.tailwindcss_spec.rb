require 'rails_helper'

RSpec.describe "types/new", type: :view do
  before(:each) do
    assign(:type, Type.new(
      category: nil,
      type_name: "MyString"
    ))
  end

  it "renders new type form" do
    render

    assert_select "form[action=?][method=?]", types_path, "post" do

      assert_select "input[name=?]", "type[category_id]"

      assert_select "input[name=?]", "type[type_name]"
    end
  end
end
