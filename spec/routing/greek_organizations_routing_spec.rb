require "spec_helper"

describe GreekOrganizationsController do
  describe "routing" do

    it "routes to #index" do
      get("/greek_organizations").should route_to("greek_organizations#index")
    end

    it "routes to #new" do
      get("/greek_organizations/new").should route_to("greek_organizations#new")
    end

    it "routes to #show" do
      get("/greek_organizations/1").should route_to("greek_organizations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/greek_organizations/1/edit").should route_to("greek_organizations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/greek_organizations").should route_to("greek_organizations#create")
    end

    it "routes to #update" do
      put("/greek_organizations/1").should route_to("greek_organizations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/greek_organizations/1").should route_to("greek_organizations#destroy", :id => "1")
    end

  end
end
