module Payload
  class UnrecognizedPayloadError < StandardError; end

  class Factory
    def self.build(payload)
      if payload.key?("reservation")
        Booking.new(payload)
      elsif payload.key?("guest")
        Airbnb.new(payload)
      else
        raise UnrecognizedPayloadError, "Unrecognized payload"
      end
    end
  end
end
