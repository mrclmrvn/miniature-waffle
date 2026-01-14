require "rails_helper"

RSpec.describe Api::V1::ReservationsController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(post: "/api/v1/reservations").to route_to("api/v1/reservations#create")
    end
  end
end
