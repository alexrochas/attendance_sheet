require 'rails_helper'

RSpec.describe AttendanceController, type: :controller do

  describe "GET #sheet" do
    it "returns http success" do
      get :sheet
      expect(response).to have_http_status(:success)
    end
  end

end
