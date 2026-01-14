require 'rails_helper'

RSpec.describe Guest, type: :model do
  describe "relationships" do
    it { is_expected.to have_many(:reservations) }
  end

  describe "validations" do
    subject { Guest.new(email: "wayne_woodbridge@bnb.com", first_name: "wayne", last_name: "woodbridge", phone: "+1812987654321") }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:phone) }
  end
end
