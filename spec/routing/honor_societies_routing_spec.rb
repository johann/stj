require "spec_helper"

describe HonorSocietiesController do
  describe "routing" do

    it "routes to #index" do
      get("/honor_societies").should route_to("honor_societies#index")
    end

    it "routes to #new" do
      get("/honor_societies/new").should route_to("honor_societies#new")
    end

    it "routes to #show" do
      get("/honor_societies/1").should route_to("honor_societies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/honor_societies/1/edit").should route_to("honor_societies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/honor_societies").should route_to("honor_societies#create")
    end

    it "routes to #update" do
      put("/honor_societies/1").should route_to("honor_societies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/honor_societies/1").should route_to("honor_societies#destroy", :id => "1")
    end

  end
end
