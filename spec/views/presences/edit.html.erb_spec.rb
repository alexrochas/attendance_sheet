require 'rails_helper'

RSpec.describe "presences/edit", type: :view do
  before(:each) do
    @presence = assign(:presence, Presence.create!(
      :hours => 1.5,
      :student => nil
    ))
  end

  it "renders the edit presence form" do
    render

    assert_select "form[action=?][method=?]", presence_path(@presence), "post" do

      assert_select "input[name=?]", "presence[hours]"

      assert_select "input[name=?]", "presence[student_id]"
    end
  end
end
