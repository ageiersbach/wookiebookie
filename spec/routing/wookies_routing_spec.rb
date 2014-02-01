require "spec_helper"

describe WookiesController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/wookies")).to route_to("wookies#index")
    end

    it "routes to #new" do
      expect(get("/wookies/new")).to route_to("wookies#new")
    end

    it "routes to #show" do
      expect(get("/wookies/1")).to route_to("wookies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/wookies/1/edit")).to route_to("wookies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/wookies")).to route_to("wookies#create")
    end

    it "routes to #update" do
      expect(put("/wookies/1")).to route_to("wookies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/wookies/1")).to route_to("wookies#destroy", :id => "1")
    end

  end
end
