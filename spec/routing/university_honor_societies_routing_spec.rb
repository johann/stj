require "spec_helper"

describe UniversityHonorSocietiesController do
  describe "routing" do

    it "routes to #index" do
      get("/university_honor_societies").should route_to("university_honor_societies#index")
    end

    it "routes to #new" do
      get("/university_honor_societies/new").should route_to("university_honor_societies#new")
    end

    it "routes to #show" do
      get("/university_honor_societies/1").should route_to("university_honor_societies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/university_honor_societies/1/edit").should route_to("university_honor_societies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/university_honor_societies").should route_to("university_honor_societies#create")
    end

    it "routes to #update" do
      put("/university_honor_societies/1").should route_to("university_honor_societies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/university_honor_societies/1").should route_to("university_honor_societies#destroy", :id => "1")
    end

  end
end
