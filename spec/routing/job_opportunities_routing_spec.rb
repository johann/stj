require "spec_helper"

describe JobOpportunitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/job_opportunities").should route_to("job_opportunities#index")
    end

    it "routes to #new" do
      get("/job_opportunities/new").should route_to("job_opportunities#new")
    end

    it "routes to #show" do
      get("/job_opportunities/1").should route_to("job_opportunities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_opportunities/1/edit").should route_to("job_opportunities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_opportunities").should route_to("job_opportunities#create")
    end

    it "routes to #update" do
      put("/job_opportunities/1").should route_to("job_opportunities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_opportunities/1").should route_to("job_opportunities#destroy", :id => "1")
    end

  end
end
