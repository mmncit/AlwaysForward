require "rails_helper"

RSpec.describe InsuranceCoveragesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/insurance_coverages").to route_to("insurance_coverages#index")
    end

    it "routes to #new" do
      expect(:get => "/insurance_coverages/new").to route_to("insurance_coverages#new")
    end

    it "routes to #show" do
      expect(:get => "/insurance_coverages/1").to route_to("insurance_coverages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/insurance_coverages/1/edit").to route_to("insurance_coverages#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/insurance_coverages").to route_to("insurance_coverages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/insurance_coverages/1").to route_to("insurance_coverages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/insurance_coverages/1").to route_to("insurance_coverages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/insurance_coverages/1").to route_to("insurance_coverages#destroy", :id => "1")
    end
  end
end
