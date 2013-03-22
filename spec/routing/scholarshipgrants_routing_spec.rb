require "spec_helper"

describe ScholarshipgrantsController do
  describe "routing" do

    it "routes to #index" do
      get("/scholarshipgrants").should route_to("scholarshipgrants#index")
    end

    it "routes to #new" do
      get("/scholarshipgrants/new").should route_to("scholarshipgrants#new")
    end

    it "routes to #show" do
      get("/scholarshipgrants/1").should route_to("scholarshipgrants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scholarshipgrants/1/edit").should route_to("scholarshipgrants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scholarshipgrants").should route_to("scholarshipgrants#create")
    end

    it "routes to #update" do
      put("/scholarshipgrants/1").should route_to("scholarshipgrants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scholarshipgrants/1").should route_to("scholarshipgrants#destroy", :id => "1")
    end

  end
end
