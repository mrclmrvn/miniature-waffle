class Api::V1::ReservationsController < ApplicationController
  wrap_parameters false

  # POST /api/v1/reservations
  def create
    normalized = Payload::Factory.build(params.to_unsafe_h).normalize

    guest = Guest.find_or_create_by!(email: normalized[:guest][:email]) do |g|
      g.assign_attributes(normalized[:guest])
    end

    reservation = guest.reservations.create!(normalized[:reservation])

    render json: { id: reservation.id }, status: :created
  rescue Payload::UnrecognizedPayloadError => e
    render json: { errors: [ e.message ] }, status: :unprocessable_content
  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_content
  end
end
