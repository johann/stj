require 'spec_helper'

describe "UniversityHonorSocieties" do
  describe "GET /university_honor_societies" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get university_honor_societies_path
      response.status.should be(200)
    end
  end
end
