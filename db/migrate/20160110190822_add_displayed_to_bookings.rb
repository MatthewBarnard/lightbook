class AddDisplayedToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :has_displayed, :boolean, default: false
  end
end
