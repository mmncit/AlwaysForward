require "rails_helper"

RSpec.describe DependentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dependents").to route_to("dependents#index")
    end

    it "routes to #new" do
      expect(:get => "/dependents/new").to route_to("dependents#new")
    end

    it "routes to #show" do
      expect(:get => "/dependents/1").to route_to("dependents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dependents/1/edit").to route_to("dependents#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dependents").to route_to("dependents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dependents/1").to route_to("dependents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dependents/1").to route_to("dependents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dependents/1").to route_to("dependents#destroy", :id => "1")
    end
  end
end
