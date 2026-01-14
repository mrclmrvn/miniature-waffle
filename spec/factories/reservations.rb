FactoryBot.define do
  factory :reservation do
    start_date { "2026-01-14" }
    end_date { "2026-01-14" }
    number_of_nights { 1 }
    number_of_guests { 1 }
    number_of_adults { 1 }
    number_of_children { 1 }
    number_of_infants { 1 }
    status { "MyString" }
    currency { "MyString" }
    payout_price { "9.99" }
    security_price { "9.99" }
    total_price { "9.99" }
    guest { nil }
  end
end
