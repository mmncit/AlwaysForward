require 'rails_helper'

RSpec.describe "InsuranceCoverages", type: :request do
  describe "GET /insurance_coverages" do
    it "works! (now write some real specs)" do
      get insurance_coverages_path
      expect(response).to have_http_status(200)
    end
  end
end
