require "spec_helper"

describe ScholarshipGrantsController do
  describe "routing" do

    it "routes to #index" do
      get("/scholarship_grants").should route_to("scholarship_grants#index")
    end

    it "routes to #new" do
      get("/scholarship_grants/new").should route_to("scholarship_grants#new")
    end

    it "routes to #show" do
      get("/scholarship_grants/1").should route_to("scholarship_grants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scholarship_grants/1/edit").should route_to("scholarship_grants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scholarship_grants").should route_to("scholarship_grants#create")
    end

    it "routes to #update" do
      put("/scholarship_grants/1").should route_to("scholarship_grants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scholarship_grants/1").should route_to("scholarship_grants#destroy", :id => "1")
    end

  end
end
