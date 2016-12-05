require "rails_helper"

RSpec.describe "routes for users", type: :routing do

  it "routes to users" do
    expect(get('/users')).
      to route_to(controller: "users", action: "index")
  end

  it "routes to user" do
    expect(post("/users")).
      to route_to(controller: "users", action: "create")
  end

  it "routes to new user page" do
    expect(get("/users/new")).
      to route_to(controller: "users", action: "new")
  end

  it "routes to edit user" do
    expect(get("/users/4/edit")).
      to route_to(controller: "users", action: "edit", id: "4")
  end

  it "routes to user" do
    expect(get("/users/4")).
      to route_to(controller: "users", action: "show", id: "4")
  end

  it "routes to patch user" do
    expect(patch("/users/4")).
      to route_to(controller: "users", action: "update", id: "4")
  end

  it "routes to put user" do
    expect(put("/users/4")).
      to route_to(controller: "users", action: "update", id: "4")
  end

  it "routes to delete user" do
    expect(delete("/users/4")).
      to route_to(controller: "users", action: "destroy", id: "4")
  end

  it "routes to user comments" do
    expect(get("/users/4/comments")).
      to route_to(controller: "comments", action: "index", user_id: "4")
  end

  it "routes to create user comments" do
    expect(post("/users/4/comments")).
      to route_to(controller: "comments", action: "create", user_id: "4")
  end

  it "routes to new user comment" do
    expect(get("/users/4/comments/new")).
      to route_to(controller: "comments", action: "new", user_id: "4")
  end

  it "routes to edit a users comment" do
    expect(get("/users/4/comments/37/edit")).
      to route_to(controller: "comments", action: "edit", user_id: "4", id: "37")
  end

  it "routes to a users comment" do
    expect(get("/users/4/comments/37")).
      to route_to(controller: "comments", action: "show", user_id: "4", id: "37")
  end

  it "routes to patch a users comment" do
    expect(patch("/users/4/comments/37")).
      to route_to(controller: "comments", action: "update", user_id: "4", id: "37")
  end

  it "routes to put a users comment" do
    expect(put("/users/4/comments/37")).
      to route_to(controller: "comments", action: "update", user_id: "4", id: "37")
  end

  it "routes to delete a users comment" do
    expect(delete("/users/4/comments/37")).
      to route_to(controller: "comments", action: "destroy", user_id: "4", id: "37")
  end

end
