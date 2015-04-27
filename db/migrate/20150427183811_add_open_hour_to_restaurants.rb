class AddOpenHourToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :open_time, :time
  end
end
