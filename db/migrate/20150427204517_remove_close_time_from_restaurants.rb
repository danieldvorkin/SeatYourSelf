class RemoveCloseTimeFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :close_time, :time
  end
end
