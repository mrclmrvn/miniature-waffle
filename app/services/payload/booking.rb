# app/services/reservation_payload/payload_two.rb
module Payload
  class Booking
    def initialize(payload)
      @reservation = payload["reservation"]
    end

    def normalize
      {
        guest: {
          email: reservation["guest_email"],
          first_name: reservation["guest_first_name"],
          last_name: reservation["guest_last_name"],
          phone: reservation["guest_phone_numbers"]&.first
        },
        reservation: {
          currency: reservation["host_currency"],
          end_date: reservation["end_date"],
          number_of_adults: reservation["guest_details"]["number_of_adults"],
          number_of_children: reservation["guest_details"]["number_of_children"],
          number_of_guests: reservation["number_of_guests"],
          number_of_infants: reservation["guest_details"]["number_of_infants"],
          number_of_nights: reservation["nights"],
          payout_price: reservation["expected_payout_amount"],
          security_price: reservation["listing_security_price_accurate"],
          start_date: reservation["start_date"],
          status: reservation["status_type"],
          total_price: reservation["total_paid_amount_accurate"]
        }
      }
    end

    attr_reader :reservation
  end
end
