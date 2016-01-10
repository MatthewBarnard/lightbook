class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :client_id
      t.date :date_requested
      t.time :time_requested
      t.boolean :COA, default: false
      t.boolean :EFT, default: false
      t.boolean :has_paid, default: false

      t.timestamps null: false
    end
    add_foreign_key :bookings, :clients, column: :client_id
  end
end
