require "rails_helper"

RSpec.describe "routes for Locations", type: :routing do

  it "routes locations" do
    expect(get("/locations")).
      to route_to("locations#index")
  end

  it "routes a location" do
    expect(get("/locations/9")).
      to route_to(controller: "locations", action: "show", id: "9")
  end

  it "routes a location create method" do
    expect(post("/locations")).
      to route_to(controller: "locations", action: "create")
  end

  it "routes to new location page" do
    expect(get("/locations/new")).
      to route_to(controller: "locations", action: "new")
  end

  it "routes to edit location page" do
    expect(get("/locations/9/edit")).
      to route_to(controller: "locations", action: "edit", id: "9")
  end

  it "routes to patch a location" do
    expect(patch("/locations/9")).
      to route_to(controller: "locations", action: "update", id: "9")
  end

  it "routes to put a location" do
    expect(put("/locations/9")).
      to route_to(controller: "locations", action: "update", id: "9")
  end

  it "routes to location deletion" do
    expect(delete("/locations/9")).
      to route_to(controller: "locations", action: "destroy", id: "9")
  end

  it "routes to location comments" do
    expect(get("/locations/9/comments")).
      to route_to(controller: "comments", action: "index", location_id: "9")
  end

  it "routes to create location comments" do
    expect(post("/locations/9/comments")).
      to route_to(controller: "comments", action: "create", location_id: "9")
  end

  it "routes to new location comment" do
    expect(get("/locations/9/comments/new")).
      to route_to(controller: "comments", action: "new", location_id: "9")
  end

  it "routes to edit a locations comment" do
    expect(get("/locations/9/comments/36/edit")).
      to route_to(controller: "comments", action: "edit", location_id: "9", id: "36")
  end

  it "routes to a locations comment" do
    expect(get("/locations/9/comments/36")).
      to route_to(controller: "comments", action: "show", location_id: "9", id: "36")
  end

  it "routes to patch a locations comment" do
    expect(patch("/locations/9/comments/36")).
      to route_to(controller: "comments", action: "update", location_id: "9", id: "36")
  end

  it "routes to put a locations comment" do
    expect(put("/locations/9/comments/36")).
      to route_to(controller: "comments", action: "update", location_id: "9", id: "36")
  end

  it "routes to delete a locations comment" do
    expect(delete("/locations/9/comments/36")).
      to route_to(controller: "comments", action: "destroy", location_id: "9", id: "36")
  end

end
