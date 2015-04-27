class AddCloseHourToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :close_time, :time
  end
end
