module Payload
  class Airbnb
    def initialize(payload)
      @payload = payload
    end

    def normalize
      {
        guest: {
          email: payload["guest"]["email"],
          first_name: payload["guest"]["first_name"],
          last_name: payload["guest"]["last_name"],
          phone: payload["guest"]["phone"]
        },
        reservation: {
          currency: payload["currency"],
          end_date: payload["end_date"],
          number_of_adults: payload["adults"],
          number_of_children: payload["children"],
          number_of_guests: payload["guests"],
          number_of_infants: payload["infants"],
          number_of_nights: payload["nights"],
          payout_price: payload["payout_price"],
          security_price: payload["security_price"],
          start_date: payload["start_date"],
          status: payload["status"],
          total_price: payload["total_price"]
        }
      }
    end

    attr_reader :payload
  end
end
