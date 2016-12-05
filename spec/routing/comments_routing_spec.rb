require "rails_helper"

RSpec.describe "routes for Comments", type: :routing do

  it "routes comments" do
    expect(get("/comments")).
      to route_to("comments#index")
  end

  it "routes a comment" do
    expect(get("/comments/33")).
      to route_to(controller: "comments", action: "show", id: "33")
  end

  it "routes a comment create method" do
    expect(post("/comments")).
      to route_to(controller: "comments", action: "create")
  end

  it "routes to new comment page" do
    expect(get("/comments/new")).
      to route_to(controller: "comments", action: "new")
  end

  it "routes to edit comment page" do
    expect(get("/comments/33/edit")).
      to route_to(controller: "comments", action: "edit", id: "33")
  end

  it "routes to patch a comment" do
    expect(patch("/comments/33")).
      to route_to(controller: "comments", action: "update", id: "33")
  end

  it "routes to put a comment" do
    expect(put("/comments/33")).
      to route_to(controller: "comments", action: "update", id: "33")
  end

  it "routes to comment deletion" do
    expect(delete("/comments/33")).
      to route_to(controller: "comments", action: "destroy", id: "33")
  end

  it "routes to comment comments" do
    expect(get("/comments/33/comments")).
      to route_to(controller: "comments", action: "index", comment_id: "33")
  end

  it "routes to create comment comments" do
    expect(post("/comments/33/comments")).
      to route_to(controller: "comments", action: "create", comment_id: "33")
  end

  it "routes to new comment comment" do
    expect(get("/comments/33/comments/new")).
      to route_to(controller: "comments", action: "new", comment_id: "33")
  end

  it "routes to edit a comments comment" do
    expect(get("/comments/33/comments/34/edit")).
      to route_to(controller: "comments", action: "edit", comment_id: "33", id: "34")
  end

  it "routes to a comments comment" do
    expect(get("/comments/33/comments/34")).
      to route_to(controller: "comments", action: "show", comment_id: "33", id: "34")
  end

  it "routes to patch a comments comment" do
    expect(patch("/comments/33/comments/34")).
      to route_to(controller: "comments", action: "update", comment_id: "33", id: "34")
  end

  it "routes to put a comments comment" do
    expect(put("/comments/33/comments/34")).
      to route_to(controller: "comments", action: "update", comment_id: "33", id: "34")
  end

  it "routes to delete a comments comment" do
    expect(delete("/comments/33/comments/34")).
      to route_to(controller: "comments", action: "destroy", comment_id: "33", id: "34")
  end

end
