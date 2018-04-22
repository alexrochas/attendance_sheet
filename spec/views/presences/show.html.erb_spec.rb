require 'rails_helper'

RSpec.describe "presences/show", type: :view do
  before(:each) do
    @presence = assign(:presence, Presence.create!(
      :hours => 2.5,
      :student => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
