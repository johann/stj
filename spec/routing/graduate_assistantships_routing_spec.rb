require "spec_helper"

describe GraduateAssistantshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/graduate_assistantships").should route_to("graduate_assistantships#index")
    end

    it "routes to #new" do
      get("/graduate_assistantships/new").should route_to("graduate_assistantships#new")
    end

    it "routes to #show" do
      get("/graduate_assistantships/1").should route_to("graduate_assistantships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/graduate_assistantships/1/edit").should route_to("graduate_assistantships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/graduate_assistantships").should route_to("graduate_assistantships#create")
    end

    it "routes to #update" do
      put("/graduate_assistantships/1").should route_to("graduate_assistantships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/graduate_assistantships/1").should route_to("graduate_assistantships#destroy", :id => "1")
    end

  end
end
