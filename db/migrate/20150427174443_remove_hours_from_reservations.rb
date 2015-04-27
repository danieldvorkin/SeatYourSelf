class RemoveHoursFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :hours, :integer
  end
end
