class RemoveHoursFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :hours, :integer
  end
end
20150427174443