require 'rails_helper'

RSpec.describe "presences/index", type: :view do
  before(:each) do
    assign(:presences, [
      Presence.create!(
        :hours => 2.5,
        :student => nil
      ),
      Presence.create!(
        :hours => 2.5,
        :student => nil
      )
    ])
  end

  it "renders a list of presences" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
