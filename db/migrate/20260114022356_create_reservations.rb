class CreateReservations < ActiveRecord::Migration[8.1]
  def change
    create_table :reservations do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :number_of_nights
      t.integer :number_of_guests
      t.integer :number_of_adults
      t.integer :number_of_children
      t.integer :number_of_infants
      t.string :status, null: false
      t.string :currency
      t.decimal :payout_price
      t.decimal :security_price
      t.decimal :total_price
      t.references :guest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
