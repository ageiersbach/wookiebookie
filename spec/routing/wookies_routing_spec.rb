require "spec_helper"

describe WookiesController do
  describe "routing" do

    it "routes to #index" do
      get("/wookies").should route_to("wookies#index")
    end

    it "routes to #new" do
      get("/wookies/new").should route_to("wookies#new")
    end

    it "routes to #show" do
      get("/wookies/1").should route_to("wookies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/wookies/1/edit").should route_to("wookies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/wookies").should route_to("wookies#create")
    end

    it "routes to #update" do
      put("/wookies/1").should route_to("wookies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/wookies/1").should route_to("wookies#destroy", :id => "1")
    end

  end
end
