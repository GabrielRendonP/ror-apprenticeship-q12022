require "rails_helper"

RSpec.describe PokeDataController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/poke_data").to route_to("poke_data#index")
    end

    it "routes to #new" do
      expect(get: "/poke_data/new").to route_to("poke_data#new")
    end

    it "routes to #show" do
      expect(get: "/poke_data/1").to route_to("poke_data#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/poke_data/1/edit").to route_to("poke_data#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/poke_data").to route_to("poke_data#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/poke_data/1").to route_to("poke_data#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/poke_data/1").to route_to("poke_data#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/poke_data/1").to route_to("poke_data#destroy", id: "1")
    end
  end
end
