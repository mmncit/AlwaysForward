require 'rails_helper'

RSpec.describe "Dependents", type: :request do
  describe "GET /dependents" do
    it "works! (now write some real specs)" do
      get dependents_path
      expect(response).to have_http_status(200)
    end
  end
end
