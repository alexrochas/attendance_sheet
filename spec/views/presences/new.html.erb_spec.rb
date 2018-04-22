require 'rails_helper'

RSpec.describe "presences/new", type: :view do
  before(:each) do
    assign(:presence, Presence.new(
      :hours => 1.5,
      :student => nil
    ))
  end

  it "renders new presence form" do
    render

    assert_select "form[action=?][method=?]", presences_path, "post" do

      assert_select "input[name=?]", "presence[hours]"

      assert_select "input[name=?]", "presence[student_id]"
    end
  end
end
