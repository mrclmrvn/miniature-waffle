require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to(:guest) }
  end
  describe "validations" do
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
    it { is_expected.to validate_presence_of(:status) }
  end
end
