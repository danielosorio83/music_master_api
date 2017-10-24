require 'rails_helper'

RSpec.describe SpotifiesController, type: :controller do
  describe "POST #create" do
    it "returns http success" do
      post :create, format: :json
      expect(response).to have_http_status(:success)
    end

    it 'assigns @spotify with valid json' do
      post :create, format: :json
      expect(assigns(:spotify)).to include('access_token')
      expect(assigns(:spotify)).to include('expires_in')
    end
  end
end
