require "spec_helper"

describe StudentOrganizationsController do
  describe "routing" do

    it "routes to #index" do
      get("/student_organizations").should route_to("student_organizations#index")
    end

    it "routes to #new" do
      get("/student_organizations/new").should route_to("student_organizations#new")
    end

    it "routes to #show" do
      get("/student_organizations/1").should route_to("student_organizations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/student_organizations/1/edit").should route_to("student_organizations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/student_organizations").should route_to("student_organizations#create")
    end

    it "routes to #update" do
      put("/student_organizations/1").should route_to("student_organizations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/student_organizations/1").should route_to("student_organizations#destroy", :id => "1")
    end

  end
end
