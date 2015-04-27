class AddBookingTimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :booking_time, :integer
  end
end
