require 'rails_helper'

RSpec.describe AccessController, type: :controller do

  describe "GET #menu" do
    it "returns http success" do
      get :menu
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #login" do
    it "returns http success" do
      get :login
      expect(response).to have_http_status(:success)
    end
  end

end
