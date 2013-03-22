require "spec_helper"

describe UniversityProgramsController do
  describe "routing" do

    it "routes to #index" do
      get("/university_programs").should route_to("university_programs#index")
    end

    it "routes to #new" do
      get("/university_programs/new").should route_to("university_programs#new")
    end

    it "routes to #show" do
      get("/university_programs/1").should route_to("university_programs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/university_programs/1/edit").should route_to("university_programs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/university_programs").should route_to("university_programs#create")
    end

    it "routes to #update" do
      put("/university_programs/1").should route_to("university_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/university_programs/1").should route_to("university_programs#destroy", :id => "1")
    end

  end
end
