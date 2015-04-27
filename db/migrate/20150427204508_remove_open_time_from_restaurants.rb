class RemoveOpenTimeFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :open_time, :time
  end
end
