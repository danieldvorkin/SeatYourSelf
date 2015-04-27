class RemoveRestIdFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :rest_id, :integer
  end
end
